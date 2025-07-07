package main

import (
	"context"
	"net"
	"net/http"
	_ "net/http/pprof"
	"strings"
	"sync"

	xConfLib "github.com/ruandao/distribute-im-gateway/pkg/config"
	logx "github.com/ruandao/distribute-im-gateway/pkg/lib/logx"
	"github.com/ruandao/distribute-im-gateway/src/Auth/service/gen/pb_auth"
	"google.golang.org/grpc"
	"google.golang.org/grpc/reflection"
)

type AuthService struct {
	pb_auth.UnimplementedAuthServiceServer
}

func (s *AuthService) Check(ctx context.Context, req *pb_auth.Request) (*pb_auth.Response, error) {
	return &pb_auth.Response{
		Result: &pb_auth.Boolean{
			Result: true,
		},
	}, nil
}

func runSer(wg *sync.WaitGroup, mux *http.ServeMux, config *xConfLib.Config) {

	authService := AuthService{}

	grpcServer := grpc.NewServer()
	pb_auth.RegisterAuthServiceServer(grpcServer, &authService)
	reflection.Register(grpcServer) // 注册反射服务，可选

	// 创建一个监听TCP连接的监听器
	lis, err := net.Listen("tcp", config.ListenAddr())
	if err != nil {
		logx.Fatal(err)
	}

	// 创建一个HTTP/2服务器
	httpServer := &http.Server{
		Handler: grpcHandlerFunc(grpcServer, mux),
	}

	logx.Infof("start %v:\nlistenAddr: %v \nregisterAddr: %v\n", config.BConfig.LoadAppId(), config.BConfig.ListenAddr(), config.BConfig.RegisterAddr())
	logx.Info("gRPC server ready on /")
	logx.Info("HTTP server ready on /")
	// 启动服务器
	if err := httpServer.Serve(lis); err != nil {
		wg.Done()
		logx.Fatal(err)
	}
}

// grpcHandlerFunc 返回一个HTTP处理函数，用于区分gRPC和HTTP请求
func grpcHandlerFunc(grpcServer *grpc.Server, otherHandler http.Handler) http.Handler {
	return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		// 判断是否为gRPC请求
		if r.ProtoMajor == 2 && strings.Contains(r.Header.Get("Content-Type"), "application/grpc") {
			grpcServer.ServeHTTP(w, r)
		} else {
			otherHandler.ServeHTTP(w, r)
		}
	})
}
