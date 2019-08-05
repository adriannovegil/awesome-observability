# Awesome Monitoring

A list of awesome tools, services and other shiny things for monitoring and analyze everything in your app.

## Application Performance monitoring (APM)

### Products

 * [NewRelic](https://newrelic.com) - complex service for both application and infrastructure monitoring
 * [DataDog](https://www.datadoghq.com) - complex service for both application and infrastructure monitoring
 * [OverOps](https://www.overops.com) - OverOps provides Automated Root Cause (ARC) analysis to reduce the time to identify and fix critical production application errors.
 * [AppDynamics](https://www.appdynamics.com/) - Business and application performance monitoring.
 * [Java Melody](https://github.com/javamelody/javamelody/wiki) - Monitoring of JavaEE applications.
 * [Kamon](http://www.kamon.io/) - Monitoring applications running on the JVM.
 * [SPM](https://sematext.com/spm/) - solutions for performance monitoring.
 * [OverOps](https://www.overops.com/) - Know when and why code breaks in production.
 * [Instrumental](https://instrumentalapp.com) - Real-time application and server monitoring
 * [Zipkin](https://github.com/openzipkin/zipkin) - A distributed tracing system.
 * [PinPoint](https://github.com/naver/pinpoint) - Open source APM tool for large-scale distributed systems written in java.

### Combined Solutions

Modern Monitoring tools for devops, container, serverless

#### Collect

Collect and transport, metrics and events.

* [OpenCensus](https://opencensus.io/) - OpenCensus is a set of libraries for various languages that allow you to collect application metrics and distributed traces, then transfer the data to a backend of your choice in real time.
* [Opentracing](https://opentracing.io/) - Vendor-neutral APIs and instrumentation for distributed tracing
* [Opentelemetry](https://opentelemetry.io/) - OpenTelemetry is made up of an integrated set of APIs and libraries as well as a collection mechanism via an agent and collector.
* [Micrometer](https://micrometer.io/) - Micrometer provides a simple facade over the instrumentation clients for the most popular monitoring systems, allowing you to instrument your JVM-based application code without vendor lock-in. Think SLF4J, but for metrics.
* [inspectIT Ocelot](https://inspectit.rocks/) - Java agent for collecting performance, tracing and business data.
* [telegraf github](https://github.com/influxdata/telegraf) - TICK stack, The plugin-driven server agent for collecting & reporting metrics.
* [node-exporter github](https://github.com/prometheus/node_exporter) - Prometheus stack, Exporter for machine metrics.
* [beats github](https://github.com/elastic/beats) - Lightweight shippers for Elasticsearch & Logstash, Elastic stack
* [logstash github](https://github.com/elastic/logstash) - Transport and process your logs, events, or other data, Elastic stack.
* [collectd](http://collectd.org/) - The system statistics collection daemon.
* [tcollector github](https://github.com/OpenTSDB/tcollector) - Data collection framework for OpenTSDB
* [falcon-plus github](https://github.com/open-falcon/falcon-plus) - An open-source and enterprise-level monitoring system.

#### Storage

* [influxdata](https://influxdata.com) - influxdb, written in go.
* [prometheus](https://prometheus.io/) - The Prometheus monitoring system and time series database.
* [elasticsearch](https://www.elastic.co/cn/products/elasticsearch) - Open Source, Distributed, RESTful Search Engine, written in java.
* [OpenTSDB](http://opentsdb.net/) - OpenTSDB, written in java.
* [kairosDB](http://kairosdb.github.io/) - KairosDB.
* [Graphite](https://graphiteapp.org) - More, than a time series database. And so awesome using with Grafana.

#### Graphing

* [Grafana](https://grafana.com) - the first really good dashboard for displaying metrics. code.
* [kibana github](https://github.com/elastic/kibana) - Elastic stack
* [chronograf github](https://github.com/influxdata/chronograf) - TICK stack

#### Alerting

* [kapacitor github](https://github.com/influxdata/kapacitor) - TICK stack, written in go.
* [alertmanager github](https://github.com/prometheus/alertmanager) - Prometheus stack, Prometheus Alertmanager, written in go.
* [x-pack](https://www.elastic.co/cn/products/x-pack) - Elastic stack.
* [Bosun](http://bosun.org/) - Time Series Alerting Framework.
* [Bosun github](https://github.com/bosun-monitor) - Bosun written in Go.

## Tranditional Monitoring tools.

 * [Nagios](http://www.nagios.org/) - Computer system, network and infrastructure monitoring software application.
 * [Zabbix](http://www.zabbix.com) - real-time monitoring of millions of metrics collected from tens of thousands of servers, virtual machines and network devices
 * [Ganglia](http://ganglia.info/) - Ganglia is a scalable distributed monitoring system for high-performance computing systems such as clusters and Grids.
 * [Zenoss](https://www.zenoss.org/) - Zenoss works with the world's largest companies to ensure their IT services and applications are always on. As the global leader in hybrid IT monitoring and analytics software, Zenoss provides complete visibility for cloud, virtual and physical IT environments.
 * [Opserver](http://opserver.org/) - Stack Exchange's monitoring system.
 * [netdata](http://my-netdata.io/) - netdata is a system for distributed real-time performance and health monitoring. It provides unparalleled insights, in real-time, of everything happening on the system it runs (including applications such as web and database servers), using modern interactive web dashboards.
 * [Icinga](https://www.icinga.org/) - Monitoring core with features and REST API. Fork of Nagios.
 * [Naemon](http://www.naemon.org/) - Network monitoring tool based on the Nagios 4 core with performance enhancements and new features.
 * [Shinken](http://www.shinken-monitoring.org/) - Shinken is a monitoring framework. It's a Python Nagios® Core total rewrite enhancing flexibility and large environment management.
 * [Centreon](http://www.centreon.com) - IT infrastructure and application monitoring for service performance.
 * [Opsview](https://www.opsview.com/products/opsview-atom) - Based on Nagios 4, Opsview Core is ideal for small IT and test environments.
 * [Check_mk](http://mathias-kettner.de/check_mk.html) - Check_MK is comprehensive IT monitoring solution in the tradition of Nagios. Collection of extensions for Nagios.
 * [Sensu](http://sensuapp.org/) - Open source monitoring framework.
 * [cabot github](https://github.com/arachnys/cabot) - Self-hosted, easily-deployable monitoring and alerts service.
 * [server density](https://www.serverdensity.com/) - Server monitoring.
 * [pagerduty](https://www.pagerduty.com/) - Digital Operations Management.

## Logging

 * [Brubeck](https://github.com/github/brubeck) - Statsd-compatible stats aggregator written in C

## Uptime

 * [Monitive](http://monitive.com) - free for 1 service, checked every 10 minutes with unlimited email & twitter alerts
 * [UptimeRobot](https://uptimerobot.com) - free for 50 monitors, checked every 5 minutes

## Web Analytics

 * [Piwik](https://piwik.org) - open source alternative to Google Analytics
 * [Heap Analytics](https://heapanalytics.com) - easy event tracking without coding

## Bug Tracking

 * [Sentry](https://getsentry.com/) - Application monitoring, event logging and aggregation.

## Anomalies

 * [Banshee](https://github.com/eleme/banshee) - real-time anomalies(outliers) detection system for periodic metrics

## Alerting

 * [Moira](https://github.com/moira-alert) - Most powerful alerting system, backed by Graphite.
 * [Alerta](https://github.com/guardian/alerta) - Distributed, scaleable and flexible monitoring system.
 * [Flapjack](http://flapjack.io/) - Monitoring notification routing & event processing system.
 * [Seyren](https://github.com/scobal/seyren) - An alerting dashboard for Graphite.

## Database

Tools for databases

 * [Anemometer](https://github.com/box/Anemometer) - MySQL Slow Query Monitor

## Network

 * [Cacti](http://www.cacti.net) - Web-based network monitoring and graphing tool.
 * [Observium](http://www.observium.org/) - SNMP monitoring for servers and networking devices. Runs on linux.
 * [LibreNMS](https://github.com/librenms/librenms/) - fork of Observium.
 * [Munin](http://munin-monitoring.org/) - Networked resource monitoring tool.

# Operating System

 * [Dash](https://github.com/afaqurk/linux-dash) - A low-overhead monitoring web dashboard for a GNU/Linux machine.
 * [Monit](http://mmonit.com/monit/#home) - Small Open Source utility for managing and monitoring Unix systems.
