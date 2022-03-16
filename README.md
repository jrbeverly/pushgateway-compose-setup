# Pushgateway Compose Setup

Simple code setup for spinning up Pushgateway, Prometheus & Grafana for validating lifecycle pushgateway metrrics.

## Notes

- Metrics published to pushgateway are collected by Prometheus
- Prometheus is enabled in Grafana for queries 
- Grafana datasources & dashboards are configured from the provisioning directory
- The script `publish.sh` can be used to publish the metrics into the system
- Dashboards in `grafana/dashboards` can be configured with other tools for construction
- Dashboards could be standardized, then shared into other sources
- Tools can be configured for publishing in these scenarios
