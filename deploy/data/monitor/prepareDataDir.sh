#!/bin/bash
set -x
. bin/all.sh

cleanDir "deploy/data/monitor/grafana/volumes"
cleanDir "deploy/data/monitor/prometheus/volumes"



