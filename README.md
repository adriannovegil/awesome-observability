# Awesome Observability [![Awesome](https://awesome.re/badge.svg)](https://awesome.re)

Monitoring as defined by the Oxford dictionary is to "Observe and check the progress or quality of (something) over a period of time; keep under systematic review".

For systems monitoring that means being able to give an overview over the state of a system by exposing key metrics about the systems. The monitoring can be implemented in different ways:

- one can push metrics from a service,
- pull metrics from it or
- use a combined hybrid approach

Furthermore, the concept of __observability__ can be seen a superset of monitoring where it is a part of giving visibility into the system. Providing the  ability to reason about the system health in a better way.

It can be said to  consist of three parts:

- The __event logs__ (can be in different forms, plain text, structured or binary and is in general about having a log about what happened at a certain time),
- The __metrics__ (measurement over time, for example number of failed requests) and
- The __tracing__ (represent related and distributed events together as a request flows through a system)

> __Metrics__, __Logs__ and __Traces__: The Golden Triangle of Observability in Monitoring

This repo is not only for monitoring. As said Adrian Cole's in the talk about "[Observability 3 Ways](https://www.youtube.com/watch?v=juP9VApKy_I)" we are going to focus on the three types of systems necessaries to understand how your applications behave: Logging, Metrics & Tracing.

## Contents

- [1. Best Practices](#1-best-practices)
- [2. General Tools](#2-general-tools)
- [3. Collect](#3-collect)
- [4. Load Generators and Synthetic Traffic](#4-load-generators-and-synthetic-traffic)
- [5. Transport](#5-transport)
- [6. Collector](#6-collector)
- [7. Storage](#7-storage)
- [8. Visualization](#8-visualization)
- [9. Processing and Analyze and Act](#9-processing-and-analyze-and-act)
- [10. Application Performance Monitoring Solutions (APM)](#10-application-performance-monitoring-solutions-apm)
- [11. Service Mesh](#11-service-mesh)
- [12. Observability as a Service](#12-observability-as-a-service)
- [13. Examples and Sandbox's](#13-examples-and-sandboxs)
- [14. References](#14-references)
- [15. License](#15-license)
- [16. Contributing](#16-contributing)

## 1. Best Practices

- [Best practices for monitoring cloud applications](https://docs.microsoft.com/en-us/azure/architecture/best-practices/monitoring)
- [The Three Pillars of Observability](https://learning.oreilly.com/library/view/distributed-systems-observability/9781492033431/ch04.html)

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

- [MyScale Telemetry](https://github.com/myscale/myscale-telemetry) - Tool designed to enhance the observability of LLM applications by capturing trace data from LangChain-based applications and storing it in MyScaleDB or ClickHouse.
- [OpenLLMetry](https://github.com/traceloop/openllmetry) - Open-source observability for your LLM application, based on OpenTelemetry.
- [OpenLLMetry for Javascript](https://github.com/traceloop/openllmetry-js) - Sister project to OpenLLMetry, but in Typescript. Open-source observability for your LLM application, based on OpenTelemetry.
- [OpenLLMetry for Go](https://github.com/traceloop/go-openllmetry) - Sister project to OpenLLMetry, but in Go. Open-source observability for your LLM application, based on OpenTelemetry.
- [Kuberhealthy](https://github.com/kuberhealthy/kuberhealthy) - Kubernetes operator for synthetic monitoring and continuous process verification.
- [ingraind](https://github.com/foniod/foniod) - Security monitoring agent built around RedBPF for complex containerized environments and endpoints.
- [Opentelemetry](https://opentelemetry.io/) - OpenTelemetry is made up of an integrated set of APIs and libraries as well as a collection mechanism via an agent and collector.
- [top](https://www.booleanworld.com/guide-linux-top-command/) - Allows users to monitor processes and system resource usage on Linux. It is one of the most useful tools in a sysadmin's toolbox, and it comes pre-installed on every distribution.
- [htop](https://support.cloudways.com/system-monitoring-using-htop-command/) - Command line utility that allows you to interactively monitor your system's vital resources or server's processes in real time.
- [ctop](https://github.com/bcicen/ctop) - Top-like interface for container metrics.
- [sls-dev-tools](https://github.com/Theodo-UK/sls-dev-tools) - The Developer Tools for the Serverless World - think Chrome Dev Tools but for Serverless.
- [OpenCensus](https://opencensus.io/) - OpenCensus is a set of libraries for various languages that allow you to collect application metrics and distributed traces, then transfer the data to a backend of your choice in real time.
- [Opentracing](https://opentracing.io/) - Vendor-neutral APIs and instrumentation for distributed tracing.
- [Openmetrics](https://openmetrics.io/) - An effort to create an open standard for transmitting metrics at scale, with support for both text representation and Protocol Buffers.
- [Micrometer](https://micrometer.io/) - Micrometer provides a simple facade over the instrumentation clients for the most popular monitoring systems, allowing you to instrument your JVM-based application code without vendor lock-in. Think SLF4J, but for metrics.
- [cAdvisor](https://github.com/google/cadvisor) - cAdvisor (Container Advisor) provides container users an understanding of the resource usage and performance characteristics of their running containers.
- [Node-exporter](https://github.com/prometheus/node_exporter) - Prometheus stack, Exporter for machine metrics.
<!--lint ignore double-link-->
- [Elastic Beats](https://github.com/elastic/beats) - Lightweight shippers for Elasticsearch & Logstash, Elastic stack.
- [Collectd](http://collectd.org/) - The system statistics collection daemon.
- [Tcollector](https://github.com/OpenTSDB/tcollector) - Data collection framework for OpenTSDB.
- [Performance Co-Pilot](https://pcp.io/) - Performance Co-Pilot is a system performance analysis toolkit.
<!--lint ignore double-link-->
- [inspectIT Ocelot](https://inspectit.rocks/) - Java agent for collecting performance, tracing and business data.
- [Kamon](https://kamon.io/) - Monitoring applications running on the JVM.
- [Netflix Vector](https://github.com/Netflix/vector) - An on-host performance monitoring framework which exposes hand picked high resolution metrics to every engineer's browser.
- [Express State Metrics](https://github.com/RafalWilinski/express-status-monitor) - Simple, self-hosted module based on Socket.io and Chart.js to report realtime server metrics for Express-based node servers.
- [Kube State Metrics](https://github.com/kubernetes/kube-state-metrics) - The kube-state-metrics is a simple service that listens to the Kubernetes API server and generates metrics about the state of the objects.
- [MyPerf4J](https://github.com/LinShunKang/MyPerf4J) - High performance Java APM. Powered by ASM. Try it. Test it. If you feel its better, use it.
- [SkyAPM-dotnet](https://github.com/SkyAPM/SkyAPM-dotnet) - SkyAPM-dotnet provides the native support agent in C# and .NETStandard platform, with the helps from Apache SkyWalking committer team.
- [pktvisor](https://github.com/ns1labs/pktvisor) - Observability agent for summarizing high volume, information dense data streams down to lightweight, immediately actionable observability data directly at the edge.

### Tracing

- [Sleuth](https://spring.io/projects/spring-cloud-sleuth) - Spring Cloud Sleuth implements a distributed tracing solution for Spring Cloud, borrowing heavily from Dapper, Zipkin and HTrace.
<!--lint ignore double-link-->
- [inspectIT Ocelot](https://inspectit.rocks/) - Java agent for collecting performance, tracing and business data.

### Logging

<!--lint ignore double-link-->
- [Elastic Beats](https://github.com/elastic/beats) - Lightweight shippers for Elasticsearch & Logstash, Elastic stack.
- [mTAIL](http://ophilipp.free.fr/op_tail.htm) - Windows program that extract internal monitoring data from application logs for collection in a timeseries database.

### Events & Problems

- [kubernetes-event-exporter](https://github.com/opsgenie/kubernetes-event-exporter) - This tool allows exporting the often missed Kubernetes events to various outputs so that they can be used for observability or alerting purposes.
- [kspan](https://github.com/weaveworks-experiments/kspan) - Turning Kubernetes Events into spans.
- [KubeEye](https://github.com/kubesphere/kubeeye) - KubeEye aims to find various problems on Kubernetes, such as application misconfiguration(using Polaris), cluster components unhealthy and node problems(using Node-Problem-Detector).

## 4. Load Generators and Synthetic Traffic

- [JMeter](https://jmeter.apache.org/) - Java application designed to load test functional behavior and measure performance. It was originally designed for testing Web Applications but has since expanded to other test functions.
- [Taurus](https://github.com/Blazemeter/taurus) - Taurus relies on JMeter, Gatling, Locust.io, Grinder and Selenium WebDriver as its underlying tools. Free and open source under Apache 2.0 License.
- [K6](https://k6.io/) - k6 is a developer-centric, free and open-source load testing tool built for making performance testing a productive and enjoyable experience.
- [Vegeta](https://github.com/tsenart/vegeta) - HTTP load testing tool built out of a need to drill HTTP services with a constant request rate. It can be used both as a command line utility and a library.
- [Trunks](https://github.com/straightdave/trunks) - Trunks, like every son, is derived from the father Vegeta with some enhanced skills.
- [Yandex Tank](https://github.com/yandex/yandex-tank) - Yandex.Tank is an extensible open source load testing tool for advanced linux users which is especially good as a part of an automated load testing suite.
- [ghz](https://github.com/bojand/ghz) - Simple gRPC benchmarking and load testing tool inspired by hey and grpcurl.
- [Locust](https://github.com/locustio/locust) - Locust is an easy-to-use, distributed, user load testing tool. It is intended for load-testing web sites (or other systems) and figuring out how many concurrent users a system can handle.
- [Pandora](https://github.com/yandex/pandora) - Pandora is a high-performance load generator in Go language. It has built-in HTTP(S) and HTTP/2 support and you can write your own load scenarios in Go, compiling them just before your test.
- [Gatling](https://gatling.io/) - Load test as code.
- [GoReplay](https://github.com/buger/goreplay) - Open-source tool for capturing and replaying live HTTP traffic into a test environment in order to continuously test your system with real data.
- [phantom](https://github.com/yandex-load/phantom/tree/master/examples) - Evgeniy Mamchits' phantom is a very fast (100 000+ RPS) shooter written in C++ (default).
- [BFG](https://github.com/yandex-load/bfg) - A modular tool and framework for load generation that supports HTTP/2.
- [Bender](https://github.com/pinterest/bender) - Bender makes it easy to build load testing applications for services using protocols like HTTP, Thrift, Protocol Buffers and many more. Bender provides a library of flexible, powerful primitives that can be combined (with plain Go code) to build load testers customized to any use case and that evolve with your service over time.

## 5. Transport

The transport tools simply serve as transport pipelines for data. This includes messaging systems, proprietary protocols and exchange formats.

- [Apache Kafka](http://kafka.apache.org/) - Publish-subscribe messaging rethought as a distributed commit log.
- [Vector](https://vector.dev/) - Collect, transform, and route all your logs and metrics with one simple tool.
- [Stanza](https://github.com/observIQ/stanza) - Fast and lightweight log transport and processing agent. It's designed as a modern replacement for Fluentd, Fluent Bit, and Logstash.
- [Redis](https://redis.io/) - Redis is an open source, in-memory data structure store, used as a database, cache and message broker. It supports many different data structures such as stringes, hashes, list, etc.
- [Rsyslog](https://www.rsyslog.com/) - RSYSLOG is the rocket-fast system for log processing.
- [ØMQ](http://zeromq.org/) - Brokerless intelligent transport layer.
- [ActiveMQ](http://activemq.apache.org/) - Powerful open source messaging and integration patterns server.
- [Aeron](https://github.com/real-logic/Aeron) - Efficient reliable UDP unicast, UDP multicast, and IPC message transport.
- [Apollo](http://activemq.apache.org/apollo/) - Faster, more reliable, easier to maintain messaging broker built from the foundations of the original ActiveMQ.
- [Ascoltatori](https://github.com/mcollina/ascoltatori) - Pub/sub library for Node.
- [Beanstalk](http://kr.github.io/beanstalkd/) - Simple, fast work queue.
- [Disque](https://github.com/antirez/disque) - Distributed message broker.
- [Eventuate](http://eventuate.io/) - A platform for developing asynchronous microservices solving the distributed data management problems.
- [Malamute](https://github.com/zeromq/malamute) - ZeroMQ enterprise messaging broker.
- [Mist](https://github.com/nanopack/mist) - A distributed, tag-based pub/sub service.
- [Mosca](http://www.mosca.io/) - MQTT broker as a module.
- [Mosquitto](http://mosquitto.org/) - Open source message broker that implements the MQTT protocol.
- [Nanomsg](http://nanomsg.org/) - Socket library that provides several common communication patterns for building distributed systems.
- [NATS](https://nats.io/) - Open source, high-performance, lightweight cloud messaging system.
- [NSQ](http://nsq.io/) - A realtime distributed messaging platform.
- [Pulsar](https://pulsar.apache.org/) - Distributed pub-sub messaging system.
- [Qpid](https://qpid.apache.org/) - Cross-platform messaging components built on AMQP.
- [RabbitMQ](https://www.rabbitmq.com/) - Open source Erlang-based message broker that just works.
- [RocketMQ](https://github.com/apache/incubator-rocketmq) - A low latency, reliable, scalable, easy to use message oriented middleware born from alibaba massive messaging business.
- [VerneMQ](https://vernemq.com/) - Open source software, extendable, and enterprise support is available.
- [Zenoh](https://zenoh.io/) - A low overhead, low latency, high throughput open-source protocol that blends traditional pub/sub with geo distributed storage, queries and computations for unifying data in motion, data at rest and computations.

## 6. Collector

Receive data from the agents or instrumentation frameworks. The received data is usually persisted to some kind of storage or piped to another tool.

Depending on the collector type, performance data enhancement and modification is also possible inside of the collector.

In addition, collectors can have other responsibilities. For example, some expose the data access API, configuration points for the agents or user interface for interaction with the stored data.

### Metrics

- [Telegraf](https://github.com/influxdata/telegraf) - TICK stack, The plugin-driven server agent for collecting & reporting metrics.
<!--lint ignore double-link-->
- [Prometheus](https://prometheus.io/) - The Prometheus monitoring system and time series database.
- [statsd](https://github.com/statsd/statsd) - A network daemon that runs on the Node.js platform and listens for statistics, like counters and timers, sent over UDP or TCP and sends aggregates to one or more pluggable backend services.
- [Grafana Mimir](https://grafana.com/oss/mimir/) - Mimir is an open source, horizontally scalable, highly available, multi-tenant TSDB for long-term storage for Prometheus.

### Logging

<!--lint ignore double-link-->
- [Graylog](https://www.graylog.org/) - Simply great centralized log management.
- [Loki](https://github.com/grafana/loki) - Horizontally-scalable, highly-available, multi-tenant log aggregation system inspired by Prometheus.
- [Brubeck](https://github.com/github/brubeck) - Statsd-compatible stats aggregator written in C.
- [GoAccess](https://goaccess.io/) - GoAccess is an open source real-time web log analyzer and interactive viewer that runs in a terminal in \*nix systems or through your browser. It provides fast and valuable HTTP statistics for system administrators that require a visual server report on the fly.
- [Logbook](https://github.com/zalando/logbook) - Extensible Java library to enable complete request and response logging for different client- and server-side technologies.
- [logdy](https://github.com/logdyhq/logdy-core) - Supercharge terminal logs with web browser UI and low-code. It's like jq, tail, less, grep and awk merged together and available in a clean UI. Self-hosted, single binary.

### Events

- Nothing for the moment :-P

## 7. Storage

### Time Series Database

<!--lint ignore double-link-->
- [Prometheus](https://prometheus.io/) - The Prometheus monitoring system and time series database.
- [VictoriaMetrics](https://victoriametrics.com/) - VictoriaMetrics is a fast, cost-effective and scalable monitoring solution and time series database.
- [InfluxDB](https://influxdata.com) - InfluxDB is an open-source time series database developed by InfluxData.
- [OpenTSDB](http://opentsdb.net/) - OpenTSDB, written in java.
- [kairosDB](http://kairosdb.github.io/) - Fast Time Series Database on Cassandra.
- [Graphite](https://graphiteapp.org/) - Store numeric time-series data and render graphs of this data on demand.
- [M3DB](https://www.m3db.io/) - Fully open source metrics platform built on M3DB, a distributed timeseries database.
- [Netflix Atlas](https://github.com/Netflix/atlas) - Atlas features in-memory data storage, allowing it to gather and report very large numbers of metrics, very quickly.
- [TimescaleDB](https://www.timescale.com/) - PostgreSQL for time‑series.
- [QuestDB](https://questdb.io/) - QuestDB is the fastest open source time series database.
- [Metric Tank](https://github.com/grafana/metrictank) - Provides high availability and efficient long-term storage, retrieval, and processing for large-scale environments.

### Time Series Cache

- [Trickster](https://github.com/Comcast/trickster) - Open Source HTTP Reverse Proxy Cache and Time Series Dashboard Accelerator.

### "Meta Projects" (data storage, multi-tenant, aggregation, high availability, etc)

- [qryn](https://qryn.metrico.in/) - Polyglot monitoring and observability.
- [Promscale](https://github.com/timescale/promscale) - Unified metric and trace observability backend for Prometheus, Jaeger and OpenTelemetry built on PostgreSQL and TimescaleDB.
- [M3](https://github.com/m3db/m3) - Distributed TSDB and Query Engine, Prometheus Sidecar, Metrics Aggregator, and more such as Graphite storage and query engine.
- [Thanos](https://thanos.io/) - Highly available Prometheus setup with long term storage capabilities.
- [Cortex](https://github.com/cortexproject/cortex) - Horizontally scalable, highly available, multi-tenant, long term storage for Prometheus.
- [Observatorium](https://github.com/observatorium/observatorium) - This system will allow you to ingest, store and use common observability signals like metrics, logging and tracing.
- [Opstrace](https://opstrace.com/) - The Opstrace Distribution is a secure, horizontally-scalable, open source observability platform that you can install in your cloud account.
- [Apache HBase](https://hbase.apache.org/) - Apache HBase is the Hadoop database, a distributed, scalable, big data store.

### Tracing

<!--lint ignore double-link-->
- [Zipkin](https://github.com/openzipkin/zipkin) - A distributed tracing system.
- [Jaeger](https://www.jaegertracing.io/) - Monitor and troubleshoot transactions in complex distributed systems.
- [Grafana Tempo](https://github.com/grafana/tempo) - Open source, easy-to-use and high-scale distributed tracing backend.
<!--lint ignore double-link-->
- [Haystack](https://expediadotcom.github.io/haystack/) - A resilient, scalable tracing and analysis system.

### Search Engine

- [Apache Lucene](https://lucene.apache.org/) - Java library providing powerful indexing and search features.
- [Apache Solr](https://solr.apache.org/) - Solr is the popular, blazing-fast, open source enterprise search platform built on Apache Lucene.
- [Elasticsearch](https://www.elastic.co/es/enterprise-search) - Free and Open, Distributed, RESTful Search Engine.

### Graph Database

- [neo4j](https://github.com/neo4j/neo4j) - Graphs for Everyone.
- [ArangoDB](https://www.arangodb.com/) - Natively store data for graph, document and search needs.

### SQL Database

- [MySQL](https://www.mysql.com/) - Relational database management system.
- [MariaDB](https://mariadb.org/) - Open source relational database.
- [PostgreSQL](https://www.postgresql.org/) - Open source relational database.
- [CockroachDB](https://www.cockroachlabs.com/) - CockroachDB delivers Distributed SQL, combining the familiarity of relational data with limitless, elastic cloud scale, bulletproof resilience… and more.
- [ClickHouse](https://clickhouse.tech/) - ClickHouse is a fast open-source OLAP database management system.

### NoSQL Database (The Others :-P)

- [Apache Cassandra](https://cassandra.apache.org/) - Scalability and high availability with linear scalability and proven fault-tolerance on commodity hardware or cloud infrastructure.
- [MongoDB](https://www.mongodb.com/) - MongoDB is a document database with the scalability and flexibility that you want with the querying and indexing that you need.
- [Redis](https://redislabs.com/) - Multi-model NoSQL database server enables search, messaging, streaming, graph, and other capabilities.
- [RethinkDB](https://rethinkdb.com/) - RethinkDB pushes JSON to your apps in realtime.
- [SQLite](https://www.sqlite.org/index.html) - C-language library that implements a small, fast, self-contained, high-reliability, full-featured, SQL database engine.
- [CouchDB](https://couchdb.apache.org/) - Seamless multi-master sync, that scales from Big Data to Mobile, with an Intuitive HTTP/JSON API and designed for Reliability.

## 8. Visualization

### General & Tools

- [ExplorViz](https://github.com/ExplorViz) - Live trace visualization for large software landscapes.
- [Flame Graph](https://www.brendangregg.com/flamegraphs.html) - Visualization of profiled software, allowing the most frequent code-paths to be identified quickly and accurately.
- [Flame Scope](https://github.com/Netflix/flamescope) - FlameScope is a visualization tool for exploring different time ranges as Flame Graphs.

### Dashboarding

- [Grafana](https://grafana.com/oss/grafana/) - The first really good dashboard for displaying metrics.
- [Skooner](https://github.com/skooner-k8s/skooner) - Simple Kubernetes real-time dashboard and management.
- [SLO-Tracker](https://github.com/roshan8/slo-tracker) - A simple but effective way to track SLO's and Error budgets. SLO-tracker can be integrated with few alerting tools via webhook integration to receive SLO voilating incidents.
- [Chronograf](https://github.com/influxdata/chronograf) - Chronograf is the user interface and administrative component of the InfluxDB platform.
- [Kibana](https://github.com/elastic/kibana) - Elastic stack.
<!--lint ignore double-link-->
- [Prometheus](https://prometheus.io/) - The Prometheus monitoring system and time series database.
- [PromViz](https://github.com/nghialv/promviz) - Promviz is an application that helps you visualize the traffic of your cluster from Prometheus data.
- [Uchiwa](https://uchiwa.io/#/) - Uchiwa is a simple dashboard for the Sensu monitoring framework, built with Go and AngularJS.
- [Grafterm](https://github.com/slok/grafterm) - Visualize metrics dashboards on the terminal, like a simplified and minimalist version of Grafana for terminal.
- [Grizzly](https://github.com/grafana/grizzly) - A utility for managing various observability resources with Jsonnet.

### Tracing

<!--lint ignore double-link-->
- [Zipkin](https://github.com/openzipkin/zipkin) - A distributed tracing system.
- [Jaeger](https://www.jaegertracing.io/) - Monitor and troubleshoot transactions in complex distributed systems.
- [Grafana Tempo](https://github.com/grafana/tempo) - Open source, easy-to-use and high-scale distributed tracing backend.
<!--lint ignore double-link-->
- [Haystack](https://expediadotcom.github.io/haystack/) - A resilient, scalable tracing and analysis system.

### Graph of Nodes

- [Vizceral](https://github.com/netflix/vizceral) - Vizceral is a component for displaying traffic data on a webgl canvas. If a graph of nodes and edges with data about traffic volume is provided, it will render a traffic graph animating the connection volume between nodes.
- [Novatec Service Dependency Graph Panel](https://github.com/NovatecConsulting/novatec-service-dependency-graph-panel) - A Grafana panel for visualizing a Service Dependency Graph.

### Uptime

- [BlueWave Uptime](https://github.com/bluewave-labs/bluewave-uptime) - Open-source, self-hosted monitoring tool built with React.js, Node.js, and MongoDB, designed to track server uptime, response times, and incidents in real-time with beautiful visualizations.
- [Monitive](http://monitive.com) - Free for 1 service, checked every 10 minutes with unlimited email & twitter alerts.
- [UptimeRobot](https://uptimerobot.com) - Free for 50 monitors, checked every 5 minutes.
- [OverOps](https://www.overops.com) - OverOps provides Automated Root Cause (ARC) analysis to reduce the time to identify and fix critical production application errors.
- [Freshping](https://freshping.io) - Free for 50 monitors, checked every 1 minutes. Status pages, monitoring of HTTP (and DNS, ICMP, TCP/UDP), select region of monitoring.

## 9. Processing and Analyze and Act

Tools for rocessing the system data.

- Pipeline tools that receive system data in one format, buffer or generate additional value on the raw data, and usually output or store it in another or the same format
- Usually ingests the data from a multitude of sources and also sends the results to different destinations
- Can setup alerts with a simple click or perform complex anomaly detection based on machine learning algorithms
- Send alerts to popular services like Slack, Email, SMS or PagerDuty
- Create custom triggers to perform any action. Integration with the corporative systems like Jira, CI/CD environment, source code anayze tools, etc.

### Processing

- [Logstash](https://www.elastic.co/es/products/logstash) - Logstash is an open source, server-side data processing pipeline that ingests data from a multitude of sources simultaneously, transforms it, and then sends it to your favorite "stash".
- [Fluentd](https://www.fluentd.org/) - Fluentd is an open source data collector for unified logging layer.
- [Vector](https://github.com/timberio/vector) - Vector is a high-performance observability data router. It makes collecting, transforming, and sending logs, metrics, and events easy. It decouples data collection & routing from your services, giving you control and data ownership, among many other benefits.
<!--lint ignore double-link-->
- [Haystack](https://expediadotcom.github.io/haystack/) - A resilient, scalable tracing and analysis system.
- [Kapacitor](https://www.influxdata.com/time-series-platform/kapacitor/) - Kapacitor is a real-time streaming data processing engine.

### Alerts

- [Sloth](https://github.com/slok/sloth) - Easy and simple Prometheus SLO (service level objectives) generator.
<!--lint ignore double-link-->
- [Bosun](https://bosun.org/) - Is an open-source, MIT licensed, monitoring and alerting system.
- [ElastAlert](https://github.com/Yelp/elastalert) - Easy & Flexible Alerting With Elasticsearch.
<!--lint ignore double-link-->
- [Haystack](https://expediadotcom.github.io/haystack/) - A resilient, scalable tracing and analysis system.
- [Kapacitor](https://github.com/influxdata/kapacitor) - TICK stack, written in go.
- [Prometheus Alertmanager](https://github.com/prometheus/alertmanager) - Prometheus stack, Prometheus Alertmanager, written in go.
- [X-Pack](https://www.elastic.co/cn/products/x-pack) - Elastic stack.
<!--lint ignore double-link-->
- [Bosun](https://bosun.org/) - Time Series Alerting Framework.
- [Moira](https://github.com/moira-alert) - Most powerful alerting system, backed by Graphite.
- [Alerta](https://alerta.io/) - Tool used to consolidate and de-duplicate alerts from multiple sources for quick ‘at-a-glance’ visualisation.
- [Flapjack](http://flapjack.io/) - Monitoring notification routing & event processing system.
- [Seyren](https://github.com/scobal/seyren) - An alerting dashboard for Graphite.
- [Cabot](https://cabotapp.com/) - Get alerted when services go down or metrics go crazy.

### Triggers

- [Odin](https://github.com/theycallmemac/odin) - A programmable, observable and distributed job orchestration system.
- [prometheus-am-executor](https://github.com/imgix/prometheus-am-executor) - HTTP server that receives alerts from the Prometheus Alertmanager and executes a given command with alert details set as environment variables.

### Anomalies Detection

- [Failure Mode and Effects Analysis (FMEA)](https://asq.org/quality-resources/fmea) - Documents current knowledge and actions about the risks of failures, for use in continuous improvement.
- [Banshee](https://github.com/bbotte/banshee-detection_system) - Real-time anomalies(outliers) detection system for periodic metrics.
- [Project Scorpio](https://github.com/AICoE/log-anomaly-detector) - Log Anomaly Detector.
- [Anomaly Detection in Prometheus Metrics](https://github.com/AICoE/prometheus-anomaly-detector) - Prototype for a Prometheus Anomaly Detector (PAD) which can be deployed on OpenShift. The PAD is a framework to deploy a metric prediction model to detect anomalies in prometheus metrics.
- [Prophet](https://facebook.github.io/prophet/) - Prophet is a forecasting procedure implemented in  R and Python.  It is fast and provides completely automated forecasts that can be tuned by hand by data scientists and analysts.
- [Anomaly Detection Toolkit (ADTK)](https://adtk.readthedocs.io/en/stable/) - Python package for unsupervised / rule-based time series anomaly detection.
- [Chaos Genius](https://github.com/chaos-genius/chaos_genius) - ML powered analytics engine for anomaly/outlier detection and root cause analysis.

## 10. Application Performance Monitoring Solutions (APM)

- [OpenLIT](https://github.com/openlit/openlit) - OTel-native Observability and Evals for LLMs & GPUs.
- [Langtrace](https://github.com/Scale3-Labs/langtrace) - Open Source & Open Telemetry(OTEL) Observability for LLM applications.
- [servicenow - Cloud Observability](https://www.servicenow.com/products/observability.html) - Gain AI-powered insights to detect and quickly respond to changes in cloud-native and monolithic applications. 
- [DeepFlow](https://github.com/deepflowio/deepflow) - Implemented Zero Code data collection with eBPF for metrics, distributed tracing, request logs and function profiling, and is further integrated with SmartEncoding to achieve Full Stack correlation and efficient access to all observability data.
- [coroot](https://coroot.com/) - Open-source eBPF-based observability tool that turns telemetry data into actionable insights, helping you identify and resolve application issues quickly.
- [robusta](https://home.robusta.dev/) - Unified Kubernetes  monitoring, observability, and operations.
- [Odigos](https://github.com/keyval-dev/odigos) - Observability Control Plane.
- [Kloudfuse](https://www.kloudfuse.com/) - Single unified observability platform for metrics, events, logs and traces.
- [Aspecto](https://www.aspecto.io/) - Troubleshoot performance bottlenecks and errors within your microservices.
- [Zabbix](https://github.com/zabbix/zabbix) - Real-time monitoring of IT components and services, such as networks, servers, VMs, applications and the cloud.
- [circonus](https://www.circonus.com/) - Circonus provides a unified platform for monitoring and analyzing all of your metrics, infrastructure, applications.
<!--lint ignore double-link-->
- [Epsagon](https://github.com/epsagon) - Application Monitoring Built for Containers and Serverless.
- [chronosphere](https://chronosphere.io/) - Chronosphere develops a scalable, reliable, and customizable monitoring solution built for cloud-native applications.
- [Centreon](https://www.centreon.com/en/) - Business-aware and AIOps-ready IT Monitoring.
- [catchpoint](https://www.catchpoint.com/) - From the edge to the cloud, our proactive observability platform gives you the power to fix problems before your users notice.
- [Blue Matador](https://www.bluematador.com/) - Easiest and fastest way to monitor your cloud environments on the market.
Just provide your read-only credentials and start getting insights in minutes.
- [Aternity](https://www.aternity.com/application-performance-monitoring/) - Simplified high-definition APM visibility leveraging Real User Monitoring, Synthetic Monitoring, and OpenTelemetry, that is scalable, easy to use and deploy, and unifies insights across end users, applications, networks, and the cloud-native ecosystem.
- [AppOptics](https://www.appoptics.com/) - Continuous monitoring built to scale with your applications for less downtime and lower resource usage.
- [Pixie](https://docs.px.dev/) - Open source observability tool for Kubernetes applications. Pixie uses eBPF to automatically capture telemetry data without the need for manual instrumentation.
- [swagger-stats](https://swaggerstats.io/) - API Telemetry and APM.
- [Cloudprober](https://github.com/google/cloudprober) - An active monitoring software to detect failures before your customers do.
- [Hubble](https://github.com/cilium/hubble) - Network, Service & Security Observability for Kubernetes.
- [Datav](https://github.com/datav-io/datav) - A modern apm solution for enterprise, an open-source alternative to DataDog, New Relic, etc.
- [SigNoz](https://github.com/SigNoz/signoz) - Monitor your applications and troubleshoot problems in your deployed applications, an open-source alternative to DataDog, New Relic, etc.
- [SkyWalking](https://skywalking.apache.org/) - Application performance monitor tool for distributed systems, especially designed for microservices, cloud native and container-based (Docker, K8s, Mesos) architectures.
- [Pinpoint](https://github.com/pinpoint-apm/pinpoint) - Pinpoint is an APM (Application Performance Management) tool for large-scale distributed systems written in Java / PHP/PYTHON.
- [Falcon Plus](https://github.com/open-falcon/falcon-plus) - An open-source and enterprise-level monitoring system.
- [dynatrace APM](https://www.dynatrace.com/platform/application-performance-monitoring/) - Best-in-class APM from the category leader. Ensure application performance, innovate faster, collaborate efficiently, and deliver more value with dramatically less effort.
- [Elastic APM](https://www.elastic.co/es/apm) - Application performance monitoring system built on the Elastic Stack.
- [DataDog](https://www.datadoghq.com/) - Unified Monitoring For Metrics, Traces, & Logs.
- [Honeycomb](https://www.honeycomb.io/) - Give all software engineering teams the observability they need to eliminate toil and delight their users.
- [NewRelic](https://newrelic.com/) - Complete view of your applications and operating environment.
- [AppDynamics](https://www.appdynamics.com/) - Business and application performance monitoring.
- [Instrumental](https://instrumentalapp.com) - Real-time application and server monitoring.
- [Kamon apm](https://kamon.io/apm/) - Point and click to find the endpoints, database queries, and API calls that affect your user's experience.
- [Scouter](https://github.com/scouter-project/scouter) - Scouter is an open source APM (Application Performance Management) tool.
- [Netdata](https://www.netdata.cloud/) - Troubleshoot slowdowns and anomalies in your infrastructure with thousands of per-second metrics, meaningful visualizations, and insightful health alarms with zero configuration.
- [Stagemonitor](https://www.stagemonitor.org/) - An open source solution to application performance monitoring for java server applications.
- [Checkmk Server](https://checkmk.com/) - Monitor your entire hybrid IT infrastructure.
- [Icinga](https://icinga.com/) - The Icinga stack spans six core strengths that cover all aspects of monitoring.
- [Sentry](https://sentry.io/welcome/) - From error tracking to performance monitoring, developers can see what actually matters, solve quicker, and learn continuously about their applications - from the frontend to the backend.
- [Nagios](https://www.nagios.com/) - Computer system, network and infrastructure monitoring software application.
- [Sensu](https://sensu.io/) - The Observability Pipeline that delivers monitoring as code on any cloud.
- [Kieker](https://kieker-monitoring.net/) - Monitoring, analysis and tool integration.
- [Soda Sql](https://github.com/sodadata/soda-sql) - Data profiling, testing, and monitoring for SQL accessible data.
<!--lint ignore double-link-->
- [Sematext Cloud](https://sematext.com/) - Infrastructure, log, and digital experience monitoring with service and log auto-discovery. Basic plan is free.

## 11. Service Mesh

- [Istio](https://istio.io/latest/docs/concepts/observability/) - Istio generates detailed telemetry for all service communications within a mesh.
- [Kiali](https://www.kiali.io/) - Observability console for Istio with service mesh configuration capabilities. It helps you to understand the structure of your service mesh by inferring the topology, and also provides the health of your mesh.

## 12. Observability as a Service

- [servicepilot](https://www.servicepilot.com/en/) - Modern monitoring platform.
- [Instana](https://www.ibm.com/es-es/products/instana) - IBM® Instana® Observability is the gold standard of incident prevention with automated full-stack visibility, 1-second granularity and 3 seconds to notify.
<!--lint ignore double-link-->
- [Epsagon](https://github.com/epsagon) - Application Monitoring Built for Containers and Serverless.
- [Mackerel](https://en.mackerel.io/) - A SaaS server monitoring service with an intuitive UI, optimized for the cloud era, that fosters a culture of team-based system monitoring/operation.
- [Grafana Cloud](https://grafana.com/products/cloud/?plcmt=nav-products-cta1&cta=cloud) - Composable observability platform, integrating metrics, traces and logs with Grafana.
- [NexClipper](https://github.com/NexClipper) - Full stack visibility and intelligence for cloud native applications.
- [Sysdig Prometheus](https://sysdig.com/products/monitor/) - Cloud scale monitoring solution with full Prometheus compatibility.
- [WhaTap](https://whatap.io/en/) - Provides an integrated monitoring service for DevOps that analyzes application performance issue running on kubernetes in real time.
- [CloudWatch](https://aws.amazon.com/es/cloudwatch/) - Observability of your AWS resources and applications on AWS and on-premises.
- [Google Cloud Monitoring](https://cloud.google.com/monitoring) - Gain visibility into the performance, availability, and health of your applications and infrastructure.
- [Azure Monitor](https://azure.microsoft.com/en-us/services/monitor/#overview) - Full observability into your applications, infrastructure, and network.
- [Guance](https://www.guance.com) - China local "All in one" observability platform, it can integrate any open source collecting method.
- [Alibaba Cloud Logs Service](https://www.alibabacloud.com/es/product/log-service) - Complete real-time data logging service that has been developed by Alibaba Group.
<!--lint ignore double-link-->
- [Graylog Cloud](https://www.graylog.org/) - Seamless log data collection, faster analysis, and the answers you need when you need them.
- [humio](https://www.humio.com/) - Modern log management with streaming observability and affordable Unlimited Plans.
- [logdna](https://www.logdna.com/) - A comprehensive log solution to control all of your log data.
- [loggly](https://www.loggly.com/) - See it all in one place. Dozens of log sources, no proprietary agents.
- [logiq.ai](https://www.logiq.ai/) - Platform to connect observability data from any source to any destination.
- [SCALYR](https://www.scalyr.com/) - Log analytics - blazing fast at petabyte scale, feature rich at surprisingly low cost.
- [splunk](https://www.splunk.com/) - Extensible data platform powers unified security, full-stack observability and limitless custom applications.
- [sumo logic](https://www.sumologic.com/) - Reduce downtime with real-time alerting, dashboards, and machine-learning-powered analytics for all three types of telemetry — logs, metrics, and traces.
- [Tencent Cloud Log Service](https://cloud.tencent.com/product/cls) - Tencent is an internet service portal offering value-added internet, mobile, telecom, and online advertising services.
- [Geneos](https://www.itrsgroup.com/products/geneos) - Real-time monitoring for all your environments in one platform.
- [Levitate](https://last9.io/levitate-tsdb) - A Time Series Data Warehouse and Cloud Native Monitoring Solution. 
<!--lint ignore double-link-->
- [Sematext Cloud](https://sematext.com/) - Infrastructure and log monitoring with service and log auto-discovery. Basic plan is free. Website uptime, API, and SSL certificate monitoring. Includes status pages and scriptable multi-page user transaction monitoring, etc.
- [Dash0](https://wwww.dash0.com/) - Dash0 is modern OpenTelemetry Native Observability, built on CNCF Open Standards such as PromQL, Perses and OLTP with full cost control. Supports monitoring metrics, logs and traces. With dashboarding and alerting capabilities.

## 13. Examples and Sandbox's

- [Node.js boilerplate app (JavaScript)](https://github.com/Olivr/app-node-js) - Docker and Kubernetes ready. Observability (logs, metrics, traces) included.
- [Observability Sandbox](https://github.com/adriannovegil/observability-sandbox) - Get up and running with Prometheus, Thanos, Grafana, and more using Docker and Docker Compose.
- [Spring PetClinic Sample Application](https://github.com/spring-petclinic/spring-petclinic-microservices) - Distributed version of the Spring PetClinic Sample Application built with Spring Cloud.
- [My Spring PetClinic Sample Application](https://github.com/adriannovegil/spring-petclinic-microservices-sre) - My fork of the official repository.
- [FastAPI with Observability](https://github.com/Blueswen/fastapi-observability) - Docker ready. Telemetry FastAPI application with three pillars of observability: Traces (Tempo), Metrics (Prometheus), Logs (Loki) on Grafana through OpenTelemetry and OpenMetrics. Using examplar for cross querying between traces, metrics and logs.

## 14. References

- https://openapm.io/landscape
- https://github.com/crazy-canux/awesome-monitoring
- https://github.com/Enapiuz/awesome-monitoring
- http://www.devopsbookmarks.com/
- https://speakerdeck.com/adriancole/observability-3-ways-logging-metrics-and-tracing
- https://landscape.cncf.io/
- https://www.influxdata.com/products/

## 15. License

[![CC0](https://mirrors.creativecommons.org/presskit/buttons/88x31/svg/cc-zero.svg)](https://creativecommons.org/publicdomain/zero/1.0)

## 16. Contributing

Contributions welcome! Read the [contribution guidelines](contributing.md) first.

Thank you!
