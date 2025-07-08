

grafana dashboardID: 14057

docker-compose.yml:
  mysqld-exporter:
    image: prom/mysqld-exporter
    container_name: mysqld-exporter
    hostname: mysqld-exporter
    ports:
      - 9104:9104
    volumes:
      - ./data/monitor/mysql/user_my.cnf:/.my.cnf
    restart: always

prometheus:
  - job_name: mysql # To get metrics about the mysql exporter’s targets
    metrics_path: /probe
    static_configs:
      - targets:
        # All mysql hostnames or unix sockets to monitor.
        - host.docker.internal:3306
    relabel_configs:
      - source_labels: [__address__]
        target_label: __param_target
      - source_labels: [__param_target]
        target_label: instance
      - target_label: __address__
        # The mysqld_exporter host:port
        replacement: host.docker.internal:9104    