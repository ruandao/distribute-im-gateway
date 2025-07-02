package lib

import (
	"fmt"

	"gorm.io/driver/mysql"
	"gorm.io/gorm"
)

type DBConfig struct {
	User     string
	Password string
	Host     string
	Port     string
	DBName   string
}

func (dbConfig DBConfig) getDSN() string {
	// dsn := "user:password@tcp(127.0.0.1:3306)/test_db?charset=utf8mb4&parseTime=True&loc=Local"

	return fmt.Sprintf("%v:%v@tcp(%v:%v)/%v?charset=utf8mb4&parseTime=True&loc=Local", dbConfig.User, dbConfig.Password, dbConfig.Host, dbConfig.Port, dbConfig.DBName)
}

var dbConfig DBConfig

func RegisterDBConfig(user string, password string, dbName string) {
	dbConfig = DBConfig{User: user, Password: password, DBName: dbName}
}

func GetDB() (*gorm.DB, error) {
	// 连接数据库
	db, err := gorm.Open(mysql.Open(dbConfig.getDSN()), &gorm.Config{})
	if err != nil {
		return nil, NewXError(err, "连接数据库失败")
	}
	return db, nil
}
