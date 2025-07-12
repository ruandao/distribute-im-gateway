#!/bin/bash

regServer() {
    etcdctl --endpoints=$1 put $2 $3
}
