module github.com/ruandao/distribute-im-gateway/src/traffic

go 1.24.3

require (
	github.com/ruandao/distribute-im-gateway/pkg/lib v1.1.1
	google.golang.org/grpc v1.73.0
)

require (
	filippo.io/edwards25519 v1.1.0 // indirect
	github.com/bwmarrin/snowflake v0.3.0 // indirect
	github.com/cespare/xxhash/v2 v2.3.0 // indirect
	github.com/dgryski/go-rendezvous v0.0.0-20200823014737-9f7001d12a5f // indirect
	github.com/go-redis/redis/v8 v8.11.5 // indirect
	github.com/go-sql-driver/mysql v1.8.1 // indirect
	github.com/jinzhu/inflection v1.0.0 // indirect
	github.com/jinzhu/now v1.1.5 // indirect
	github.com/pkg/errors v0.9.1 // indirect
	go.uber.org/multierr v1.10.0 // indirect
	go.uber.org/zap v1.27.0 // indirect
	golang.org/x/net v0.38.0 // indirect
	golang.org/x/sys v0.31.0 // indirect
	golang.org/x/text v0.23.0 // indirect
	google.golang.org/genproto/googleapis/rpc v0.0.0-20250324211829-b45e905df463 // indirect
	google.golang.org/protobuf v1.36.6 // indirect
	gorm.io/driver/mysql v1.6.0 // indirect
	gorm.io/gorm v1.30.0 // indirect
)

replace github.com/ruandao/distribute-im-gateway/pkg/lib => ../lib
