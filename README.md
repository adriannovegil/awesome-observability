# Awesome Observability

Monitoring as defined by the Oxford dictionary is to "Observe and check the progress or quality of (something) over a period of time; keep under systematic review".

For systems monitoring that means being able to give an overview over the state of a system by exposing key metrics about the systems. The monitoring can be implemented in different ways:

 * one can push metrics from a service,
 * pull metrics from it or
 * use a combined hybrid approach

Furthermore, the concept of __observability__ can be seen a superset of monitoring where it is a part of giving visibility into the system. Providing the  ability to reason about the system health in a better way.

It can be said to  consist of three parts:

 * __event logs__ (can be in different forms, plain text, structured or binary and is in general about having a log about what happened at a certain time),
 * __metrics__ (measurement over time, for example number of failed requests) and
 * __tracing__ (represent related and distributed events together as a request flows through a system)

> __Metrics__, __Logs__ and __Traces__: The Golden Triangle of Observability in Monitoring

This repo is not only for monitoring. As said Adrian Cole’s in the talk about "[Observability 3 Ways](https://www.dotconferences.com/2017/04/adrian-cole-observability-3-ways-logging-metrics-tracing)" we are going to focus on the three types of systems necessaries to understand how your applications behave: Logging, Metrics & Tracing.

## 1. Best Practices

 * [Best practices for monitoring cloud applications](https://docs.microsoft.com/en-us/azure/architecture/best-practices/monitoring)
 * [The Three Pillars of Observability](https://learning.oreilly.com/library/view/distributed-systems-observability/9781492033431/ch04.html)

## 2. General Tools

Before to start with huge observability solution. If you just need to control some application aspects, visualize how is working your system, or just identify a problem, may be usefull start with one, or a collection application, that help you to get this information in a __easy__ and __cheap__ way.

Additional to this, start with tools to get information about your system to determine if it's working well, can help you to define the final stack if you want to install a corporative solution to any project. I know some stories abot people that install, configure and even evolution some monitoring tools as a corporative solution, an when the solution is in production, they realize that the tools don't cover all the necessaries to control their applications :-D

Following you can see an interesting post from Netflix writteb by [Brendan Gregg](http://www.brendangregg.com/) that show this very clear.

https://netflixtechblog.com/linux-performance-analysis-in-60-000-milliseconds-accc10403c55

In the article you can see how with a few tools and in a short time, you can get a lot of information about your system ;-)

```
 $ uptime
 $ dmesg | tail
 $ vmstat 1
 $ mpstat -P ALL 1
 $ pidstat 1
 $ iostat -xz 1
 $ free -m
 $ sar -n DEV 1
 $ sar -n TCP,ETCP 1
 $ top
```

There are many more commands and methodologies you can apply to drill deeper.

## 3. Collect

 Get any data – metrics, events, logs, traces – from everywhere – systems, sensors, queues, databases and networks.

### Metrics

 * [top](https://www.booleanworld.com/guide-linux-top-command/) - Allows users to monitor processes and system resource usage on Linux. It is one of the most useful tools in a sysadmin’s toolbox, and it comes pre-installed on every distribution
 * [htop](https://support.cloudways.com/system-monitoring-using-htop-command/) - Command line utility that allows you to interactively monitor your system’s vital resources or server’s processes in real time
 * [ctop](https://github.com/bcicen/ctop) - Top-like interface for container metrics
 * [Opentelemetry](https://opentelemetry.io/) - OpenTelemetry is made up of an integrated set of APIs and libraries as well as a collection mechanism via an agent and collector
 * [OpenCensus](https://opencensus.io/) - OpenCensus is a set of libraries for various languages that allow you to collect application metrics and distributed traces, then transfer the data to a backend of your choice in real time
 * [Opentracing](https://opentracing.io/) - Vendor-neutral APIs and instrumentation for distributed tracing
 * [Openmetrics](https://openmetrics.io/) - An effort to create an open standard for transmitting metrics at scale, with support for both text representation and Protocol Buffers
 * [Micrometer](https://micrometer.io/) - Micrometer provides a simple facade over the instrumentation clients for the most popular monitoring systems, allowing you to instrument your JVM-based application code without vendor lock-in. Think SLF4J, but for metrics
 * [cAdvisor](https://github.com/google/cadvisor) - cAdvisor (Container Advisor) provides container users an understanding of the resource usage and performance characteristics of their running containers
 * [Node-exporter](https://github.com/prometheus/node_exporter) - Prometheus stack, Exporter for machine metrics
 * [Beats](https://github.com/elastic/beats) - Lightweight shippers for Elasticsearch & Logstash, Elastic stack
 * [Collectd](http://collectd.org/) - The system statistics collection daemon
 * [Tcollector](https://github.com/OpenTSDB/tcollector) - Data collection framework for OpenTSDB
 * [Performance Co-Pilot]() -
 * [inspectIT Ocelot](https://inspectit.rocks/) - Java agent for collecting performance, tracing and business data
 * [Kamon](http://www.kamon.io/) - Monitoring applications running on the JVM

### Tracing

 * [Sleuth](https://spring.io/projects/spring-cloud-sleuth) - Spring Cloud Sleuth implements a distributed tracing solution for Spring Cloud, borrowing heavily from Dapper, Zipkin and HTrace
 * [Jaeger](https://www.jaegertracing.io/) - Monitor and troubleshoot transactions in complex distributed systems

### Logging

 * [Loki](https://grafana.com/oss/loki) - Prometheus-inspired logging for cloud natives

### Events

 * Nothing for the moment :-P

## 4. Load Generators & Synthetic Traffic

 * [JMeter](https://jmeter.apache.org/) - Java application designed to load test functional behavior and measure performance. It was originally designed for testing Web Applications but has since expanded to other test functions
 * [Taurus](https://github.com/Blazemeter/taurus) - Taurus relies on JMeter, Gatling, Locust.io, Grinder and Selenium WebDriver as its underlying tools. Free and open source under Apache 2.0 License
 * [K6](https://k6.io/) - k6 is a developer-centric, free and open-source load testing tool built for making performance testing a productive and enjoyable experience.
 * [Vegeta](https://github.com/tsenart/vegeta) - HTTP load testing tool built out of a need to drill HTTP services with a constant request rate. It can be used both as a command line utility and a library
 * [Trunks](https://github.com/straightdave/trunks) - Trunks, like every son, is derived from the father Vegeta with some enhanced skills
 * [Yandex Tank](https://github.com/yandex/yandex-tank) - Yandex.Tank is an extensible open source load testing tool for advanced linux users which is especially good as a part of an automated load testing suite
 * [ghz](https://github.com/bojand/ghz) - Simple gRPC benchmarking and load testing tool inspired by hey and grpcurl
 * [Locust](https://github.com/locustio/locust) - Locust is an easy-to-use, distributed, user load testing tool. It is intended for load-testing web sites (or other systems) and figuring out how many concurrent users a system can handle
 * [Pandora](https://github.com/yandex/pandora) - Pandora is a high-performance load generator in Go language. It has built-in HTTP(S) and HTTP/2 support and you can write your own load scenarios in Go, compiling them just before your test
 * [Gatling](https://gatling.io/) - Load test as code
 * [GoReplay](https://goreplay.org/) - Open-source tool for capturing and replaying live HTTP traffic into a test environment in order to continuously test your system with real data
 * [phantom](https://github.com/yandex-load/phantom/tree/master/examples) - Evgeniy Mamchits' phantom is a very fast (100 000+ RPS) shooter written in C++ (default)
 * [BFG](https://github.com/yandex-load/bfg) - A modular tool and framework for load generation that supports HTTP/2
 * [Bender](https://github.com/pinterest/bender) - Bender makes it easy to build load testing applications for services using protocols like HTTP, Thrift, Protocol Buffers and many more. Bender provides a library of flexible, powerful primitives that can be combined (with plain Go code) to build load testers customized to any use case and that evolve with your service over time

## 5. Transport

The transport tools simply serve as transport pipelines for data. This includes messaging systems, proprietary protocols and exchange formats.

 * [Apache Kafka](http://kafka.apache.org/) - Publish-subscribe messaging rethought as a distributed commit log
 * [Redis](https://redis.io/) - Redis is an open source, in-memory data structure store, used as a database, cache and message broker. It supports many different data structures such as stringes, hashes, list, etc.
 * [Rsyslog](https://www.rsyslog.com/) - RSYSLOG is the rocket-fast system for log processing
 * [ØMQ](http://zeromq.org/) - Brokerless intelligent transport layer
 * [ActiveMQ](http://activemq.apache.org/) - Powerful open source messaging and integration patterns server
 * [Aeron](https://github.com/real-logic/Aeron) - Efficient reliable UDP unicast, UDP multicast, and IPC message transport
 * [Apollo](http://activemq.apache.org/apollo/) - Faster, more reliable, easier to maintain messaging broker built from the foundations of the original ActiveMQ
 * [Ascoltatori](https://github.com/mcollina/ascoltatori) - Pub/sub library for Node
 * [Beanstalk](http://kr.github.io/beanstalkd/) - Simple, fast work queue
 * [Disque](https://github.com/antirez/disque) - Distributed message broker
 * [Eventuate](http://eventuate.io/) - A platform for developing asynchronous microservices solving the distributed data management problems
 * [Malamute](https://github.com/zeromq/malamute) - ZeroMQ enterprise messaging broker
 * [Mist](https://github.com/nanopack/mist) - A distributed, tag-based pub/sub service
 * [Mosca](http://www.mosca.io/) - MQTT broker as a module
 * [Mosquitto](http://mosquitto.org/) - Open source message broker that implements the MQTT protocol
 * [Nanomsg](http://nanomsg.org/) - Socket library that provides several common communication patterns for building distributed systems
 * [NATS](https://nats.io/) - Open source, high-performance, lightweight cloud messaging system
 * [NSQ](http://nsq.io/) - A realtime distributed messaging platform
 * [Pulsar](https://pulsar.apache.org/) - Distributed pub-sub messaging system
 * [Qpid](https://qpid.apache.org/) - Cross-platform messaging components built on AMQP
 * [RabbitMQ](https://www.rabbitmq.com/) - Open source Erlang-based message broker that just works
 * [RocketMQ](https://github.com/apache/incubator-rocketmq) - A low latency, reliable, scalable, easy to use message oriented middleware born from alibaba massive messaging business
 * [VerneMQ](https://vernemq.com/) - Open source software, extendable, and enterprise support is available

## 6. Collector

Receive data from the agents or instrumentation frameworks. The received data is usually persisted to some kind of storage or piped to another tool.

Depending on the collector type, performance data enhancement and modification is also possible inside of the collector.

In addition, collectors can have other responsibilities. For example, some expose the data access API, configuration points for the agents or user interface for interaction with the stored data.

### Metrics

 * [Telegraf](https://github.com/influxdata/telegraf) - TICK stack, The plugin-driven server agent for collecting & reporting metrics
 * [Prometheus](https://prometheus.io/) - The Prometheus monitoring system and time series database

### Tracing

 * [Zipkin](https://github.com/openzipkin/zipkin) - A distributed tracing system
 * [Jaeger](https://www.jaegertracing.io/) - Monitor and troubleshoot transactions in complex distributed systems

### Logging

 * [Graylog](https://www.graylog.org/) - Simply great centralized log management
 * [Loki](https://github.com/grafana/loki) - Horizontally-scalable, highly-available, multi-tenant log aggregation system inspired by Prometheus
 * [Brubeck](https://github.com/github/brubeck) - Statsd-compatible stats aggregator written in C
 * [GoAccess](https://goaccess.io/) - GoAccess is an open source real-time web log analyzer and interactive viewer that runs in a terminal in \*nix systems or through your browser. It provides fast and valuable HTTP statistics for system administrators that require a visual server report on the fly

### Events

 * Nothing for the moment :-P

## 7. Storage

### Time Series Database

 * [Prometheus](https://prometheus.io/) - The Prometheus monitoring system and time series database
 * [VictoriaMetrics](https://victoriametrics.com/) - VictoriaMetrics is a fast, cost-effective and scalable monitoring solution and time series database
 * [InfluxDB](https://influxdata.com) - InfluxDB is an open-source time series database developed by InfluxData
 * [OpenTSDB](http://opentsdb.net/) - OpenTSDB, written in java
 * [kairosDB](http://kairosdb.github.io/) - Fast Time Series Database on Cassandra
 * [Graphite](https://graphiteapp.org) - Store numeric time-series data and render graphs of this data on demand
 * [M3DB](https://www.m3db.io/) - Fully open source metrics platform built on M3DB, a distributed timeseries database
 * [Netflix Atlas](https://github.com/Netflix/atlas) - Atlas features in-memory data storage, allowing it to gather and report very large numbers of metrics, very quickly
 * [TimescaleDB](https://www.timescale.com/) - PostgreSQL for time‑series

### Data storage

 * [Thanos](https://thanos.io/) - Highly available Prometheus setup with long term storage capabilities
 * [Cortex](https://github.com/cortexproject/cortex) - Horizontally scalable, highly available, multi-tenant, long term storage for Prometheus
 * [Apache HBase](https://hbase.apache.org/) - Apache HBase is the Hadoop database, a distributed, scalable, big data store

### Search Engine

### Graph Database

### SQL Database

 * [MySQL](https://www.mysql.com/) - Relational database management system
 * [MariaDB](https://mariadb.org/) - Open source relational database
 * [PostgreSQL](https://www.postgresql.org/) - Open source relational database

### NoSQL Database

* [Apache Cassandra](https://cassandra.apache.org/) - Scalability and high availability with linear scalability and proven fault-tolerance on commodity hardware or cloud infrastructure
* [MongoDB](https://www.mongodb.com/) - MongoDB is a document database with the scalability and flexibility that you want with the querying and indexing that you need
* [Redis](https://redislabs.com/) - Multi-model NoSQL database server enables search, messaging, streaming, graph, and other capabilities

## 8. Visualization

### General

 * [Checkmk Server]() -
 * [ExplorViz]() -
 * [HAystack UI]() -
 * [Icinga Web 2]() -
 * [Sentry Server]() -
 * [Flame Graph]() -
 * [Flame Scope]() -

### Dashboarding

 * [Grafana](https://grafana.com) - The first really good dashboard for displaying metrics
 * [Chronograf](https://github.com/influxdata/chronograf) - Chronograf is the user interface and administrative component of the InfluxDB platform
 * [Kibana](https://github.com/elastic/kibana) - Elastic stack
 * [Prometheus](https://prometheus.io/) - The Prometheus monitoring system and time series database
 * [PromViz](https://github.com/nghialv/promviz) - Promviz is an application that helps you visualize the traffic of your cluster from Prometheus data
 * [Vizceral](https://github.com/netflix/vizceral) - vizceral is a component for displaying traffic data on a webgl canvas. If a graph of nodes and edges with data about traffic volume is provided, it will render a traffic graph animating the connection volume between nodes
 * [Trickster](https://github.com/Comcast/trickster) - Trickster is a reverse proxy cache for the Prometheus HTTP APIv1 that dramatically accelerates dashboard rendering times for any series queried from Prometheus
 * [Stagemonitor]() -
 * [Scouter]() -
 * [Uchiwa]() -
 * [Alerta web UI]() -
 * [netdata]() -
 * [Netflix Vector]()
 * [Netflix Atlas]() -
 * [Pinpoint Web]() -
 * [Java Flame Graph](https://github.com/saquibkhan/javaFlameGraph)
 * [Nagios Core](http://www.nagios.org/) - Computer system, network and infrastructure monitoring software application

### Trazing

* [Zipkin](https://github.com/openzipkin/zipkin) - A distributed tracing system
* [Jaeger](https://www.jaegertracing.io/) - Monitor and troubleshoot transactions in complex distributed systems
 * [Kieker Trace Analysis](http://kieker-monitoring.net/features/toolintegration/kieker-trace-analysis-tool-with-gui/) - Reconstruct and visualize architectural representations of the monitored systems from trace information collected at runtime. Currently supported architectural representations include

### Uptime

 * [Monitive](http://monitive.com) - Free for 1 service, checked every 10 minutes with unlimited email & twitter alerts
 * [UptimeRobot](https://uptimerobot.com) - Free for 50 monitors, checked every 5 minutes
 * [OverOps](https://www.overops.com) - OverOps provides Automated Root Cause (ARC) analysis to reduce the time to identify and fix critical production application errors

## 9. Processing & Analyze & Act

Tools for rocessing the system data.

 * Pipeline tools that receive system data in one format, buffer or generate additional value on the raw data, and usually output or store it in another or the same format
 * Usually ingests the data from a multitude of sources and also sends the results to different destinations
 * Can setup alerts with a simple click or perform complex anomaly detection based on machine learning algorithms
 * Send alerts to popular services like Slack, Email, SMS or PagerDuty
 * Create custom triggers to perform any action. Integration with the corporative systems like Jira, CI/CD environment, source code anayze tools, etc.

### Processing

 * [Logstash](https://www.elastic.co/es/products/logstash) - Logstash is an open source, server-side data processing pipeline that ingests data from a multitude of sources simultaneously, transforms it, and then sends it to your favorite "stash."
 * [Fluentd](https://www.fluentd.org/) - Fluentd is an open source data collector for unified logging layer
 * [Vector](https://github.com/timberio/vector) - Vector is a high-performance observability data router. It makes collecting, transforming, and sending logs, metrics, and events easy. It decouples data collection & routing from your services, giving you control and data ownership, among many other benefits
 * [Haystack]() -
 * [icingabeat]() -
 * [Kapacitor]() -
 * [Kieker]() -
 * [Metric Tank]() -
 * [Nagios Remote Data Processor]() -
 * [OpenCensus Collector]() -
 * [Scouter]() -
 * [Sensu]() -
 * [statsd]() -

### Alerts

 * [Bosun]()
 * [Checkmk Server]()
 * [ElastAlert]()
 * [Grafana]()
 * [HayStack]()
 * [Icinga 2 server]()
 * [Kapacitor](https://github.com/influxdata/kapacitor) - TICK stack, written in go
 * [Nagios Core](http://www.nagios.org/) - Computer system, network and infrastructure monitoring software application
 * [Pinpoint Web]()
 * [Prometheus Alertmanager](https://github.com/prometheus/alertmanager) - Prometheus stack, Prometheus Alertmanager, written in go
 * [Scouter Collector]()
 * [Sensu]()
 * [Collectd]()
 * [Netdata]()
 * [Stagemonitor Alerter]()
 * [X-Pack](https://www.elastic.co/cn/products/x-pack) - Elastic stack
 * [Bosun](http://bosun.org/) - Time Series Alerting Framework
 * [Moira](https://github.com/moira-alert) - Most powerful alerting system, backed by Graphite
 * [Alerta](https://github.com/guardian/alerta) - Distributed, scaleable and flexible monitoring system
 * [Flapjack](http://flapjack.io/) - Monitoring notification routing & event processing system
 * [Seyren](https://github.com/scobal/seyren) - An alerting dashboard for Graphite

### Triggers

 * WIP

### Anomalies Detection

 * [Failure Mode and Effects Analysis (FMEA)](https://asq.org/quality-resources/fmea) - Documents current knowledge and actions about the risks of failures, for use in continuous improvement.
 * [Banshee](https://github.com/bbotte/banshee-detection_system) - Real-time anomalies(outliers) detection system for periodic metrics
 * [Project Scorpio](https://github.com/AICoE/log-anomaly-detector) - Log Anomaly Detector
 * [Anomaly Detection in Prometheus Metrics](https://github.com/AICoE/prometheus-anomaly-detector) - Prototype for a Prometheus Anomaly Detector (PAD) which can be deployed on OpenShift. The PAD is a framework to deploy a metric prediction model to detect anomalies in prometheus metrics.
 * [Prophet](https://facebook.github.io/prophet/) - Prophet is a forecasting procedure implemented in  R and Python.  It is fast and provides completely automated forecasts that can be tuned by hand by data scientists and analysts.
 * [Anomaly Detection Toolkit (ADTK)](https://adtk.readthedocs.io/en/stable/) - Python package for unsupervised / rule-based time series anomaly detection.

## 10. Application performance monitoring (APM)

 * [SkyWalking](https://skywalking.apache.org/) - Application performance monitor tool for distributed systems, especially designed for microservices, cloud native and container-based (Docker, K8s, Mesos) architectures
 * [PinPoint](https://github.com/naver/pinpoint) - Open source APM tool for large-scale distributed systems written in java
 * [Falcon Plus](https://github.com/open-falcon/falcon-plus) - An open-source and enterprise-level monitoring system
 * [dynatrace APM](https://www.dynatrace.com/platform/application-performance-monitoring/) - Best-in-class APM from the category leader. Ensure application performance, innovate faster, collaborate efficiently, and deliver more value with dramatically less effort
 * [Elastic APM](https://www.elastic.co/es/apm) - Application performance monitoring system built on the Elastic Stack
 * [DataDog](https://www.datadoghq.com/) - Unified Monitoring For Metrics, Traces, & Logs
 * [NewRelic](https://newrelic.com/) - Complete view of your applications and operating environment
 * [AppDynamics](https://www.appdynamics.com/) - Business and application performance monitoring
 * [SPM](https://sematext.com/spm/) - solutions for performance monitoring.
 * [Instrumental](https://instrumentalapp.com) - Real-time application and server monitoring

## 11. Observability as a Service

  * [Kiali](https://www.kiali.io/) - Observability console for Istio with service mesh configuration capabilities. It helps you to understand the structure of your service mesh by inferring the topology, and also provides the health of your mesh
  * [NexClipper](https://www.nexclipper.io/) - NexClipper is Open Source software for Cloud Native monitoring and operation , especailly for Kubernetes, to support enterprise environments and integrate with Prometheus
  * [Sysdig Prometheus](https://sysdig.com/products/monitor/) - Cloud scale monitoring solution with full Prometheus compatibility

## 12. References

 * https://openapm.io/landscape
 * https://github.com/crazy-canux/awesome-monitoring
 * https://github.com/Enapiuz/awesome-monitoring
 * http://www.devopsbookmarks.com/
 * https://www.dotconferences.com/2017/04/adrian-cole-observability-3-ways-logging-metrics-tracing
 * https://landscape.cncf.io/
 * https://www.influxdata.com/products/

## 13. License

[![CC0](https://mirrors.creativecommons.org/presskit/buttons/88x31/svg/cc-zero.svg)](https://creativecommons.org/publicdomain/zero/1.0)

## 13. Contributing

Contributions welcome! Read the [contribution guidelines](CONTRIBUTING.md) first.

Feel free to [open an issue](https://github.com/adriannovegil/awesome-observability/issues) or [create a pull request](https://github.com/adriannovegil/awesome-observability/pulls) with your additions.

Thank you!
