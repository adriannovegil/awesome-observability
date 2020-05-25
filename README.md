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

## 2. Collect

 Get any data – metrics, events, logs, traces – from everywhere – systems, sensors, queues, databases and networks.

### Metrics

 * [Opentelemetry](https://opentelemetry.io/) - OpenTelemetry is made up of an integrated set of APIs and libraries as well as a collection mechanism via an agent and collector.
 * [OpenCensus](https://opencensus.io/) - OpenCensus is a set of libraries for various languages that allow you to collect application metrics and distributed traces, then transfer the data to a backend of your choice in real time.
 * [Opentracing](https://opentracing.io/) - Vendor-neutral APIs and instrumentation for distributed tracing.
 * [Openmetrics](https://openmetrics.io/) - An effort to create an open standard for transmitting metrics at scale, with support for both text representation and Protocol Buffers.
 * [Micrometer](https://micrometer.io/) - Micrometer provides a simple facade over the instrumentation clients for the most popular monitoring systems, allowing you to instrument your JVM-based application code without vendor lock-in. Think SLF4J, but for metrics.
 * [Node-exporter](https://github.com/prometheus/node_exporter) - Prometheus stack, Exporter for machine metrics.
 * [Beats](https://github.com/elastic/beats) - Lightweight shippers for Elasticsearch & Logstash, Elastic stack
 * [Collectd](http://collectd.org/) - The system statistics collection daemon.
 * [Tcollector](https://github.com/OpenTSDB/tcollector) - Data collection framework for OpenTSDB.
 * [Performance Co-Pilot]() -
 * [InspectIT]() -

### Tracing

 * [Sleuth](https://spring.io/projects/spring-cloud-sleuth) - Spring Cloud Sleuth implements a distributed tracing solution for Spring Cloud, borrowing heavily from Dapper, Zipkin and HTrace.
 * [Jaeger](https://www.jaegertracing.io/) - Monitor and troubleshoot transactions in complex distributed systems

### Logging

 * [Loki](https://grafana.com/oss/loki) - Prometheus-inspired logging for cloud natives

### Events

 * Nothing for the moment :-P

## 3. Load Generators & Synthetic Traffic

 * [JMeter](https://jmeter.apache.org/) - Java application designed to load test functional behavior and measure performance. It was originally designed for testing Web Applications but has since expanded to other test functions.
 * [Yandex Tank](https://github.com/yandex/yandex-tank) - Yandex.Tank is an extensible open source load testing tool for advanced linux users which is especially good as a part of an automated load testing suite
 * [ghz](https://github.com/bojand/ghz) - Simple gRPC benchmarking and load testing tool inspired by hey and grpcurl.
 * [Taurus](https://github.com/Blazemeter/taurus) - Taurus relies on JMeter, Gatling, Locust.io, Grinder and Selenium WebDriver as its underlying tools. Free and open source under Apache 2.0 License.
 * [Locust](https://github.com/locustio/locust) - Locust is an easy-to-use, distributed, user load testing tool. It is intended for load-testing web sites (or other systems) and figuring out how many concurrent users a system can handle.
 * [Pandora](https://github.com/yandex/pandora) - Pandora is a high-performance load generator in Go language. It has built-in HTTP(S) and HTTP/2 support and you can write your own load scenarios in Go, compiling them just before your test.
 * [Gatling](https://gatling.io/) - Load test as code
 * [Vegeta](https://github.com/tsenart/vegeta) - HTTP load testing tool built out of a need to drill HTTP services with a constant request rate. It can be used both as a command line utility and a library.
 * [GoReplay](https://goreplay.org/) - Open-source tool for capturing and replaying live HTTP traffic into a test environment in order to continuously test your system with real data.
 * [phantom](https://github.com/yandex-load/phantom/tree/master/examples) - Evgeniy Mamchits' phantom is a very fast (100 000+ RPS) shooter written in C++ (default)
 * [BFG](https://github.com/yandex-load/bfg) - A modular tool and framework for load generation that supports HTTP/2
 * [Bender](https://github.com/pinterest/bender) - Bender makes it easy to build load testing applications for services using protocols like HTTP, Thrift, Protocol Buffers and many more. Bender provides a library of flexible, powerful primitives that can be combined (with plain Go code) to build load testers customized to any use case and that evolve with your service over time.

## 4. Transport

The transport tools simply serve as transport pipelines for data. This includes messaging systems, proprietary protocols and exchange formats.

 * [Apache Kafka](http://kafka.apache.org/) - Publish-subscribe messaging rethought as a distributed commit log.
 * [Redis](https://redis.io/) - Redis is an open source, in-memory data structure store, used as a database, cache and message broker. It supports many different data structures such as stringes, hashes, list, etc.
 * [Rsyslog](https://www.rsyslog.com/) - RSYSLOG is the rocket-fast system for log processing
 * [ØMQ](http://zeromq.org/) - Brokerless intelligent transport layer.
 * [ActiveMQ](http://activemq.apache.org/) - Powerful open source messaging and integration patterns server.
 * [Aeron](https://github.com/real-logic/Aeron) - Efficient reliable UDP unicast, UDP multicast, and IPC message transport.
 * [Apollo](http://activemq.apache.org/apollo/) - Faster, more reliable, easier to maintain messaging broker built from the foundations of the original ActiveMQ.
 * [Ascoltatori](https://github.com/mcollina/ascoltatori) - Pub/sub library for Node.
 * [Beanstalk](http://kr.github.io/beanstalkd/) - Simple, fast work queue.
 * [Disque](https://github.com/antirez/disque) - Distributed message broker.
 * [Eventuate](http://eventuate.io/) - A platform for developing asynchronous microservices solving the distributed data management problems.
 * [Malamute](https://github.com/zeromq/malamute) - ZeroMQ enterprise messaging broker.
 * [Mist](https://github.com/nanopack/mist) - A distributed, tag-based pub/sub service.
 * [Mosca](http://www.mosca.io/) - MQTT broker as a module.
 * [Mosquitto](http://mosquitto.org/) - Open source message broker that implements the MQTT protocol.
 * [Nanomsg](http://nanomsg.org/) - Socket library that provides several common communication patterns for building distributed systems.
 * [NATS](https://nats.io/) - Open source, high-performance, lightweight cloud messaging system.
 * [NSQ](http://nsq.io/) - A realtime distributed messaging platform.
 * [Pulsar](https://pulsar.apache.org/) - Distributed pub-sub messaging system.
 * [Qpid](https://qpid.apache.org/) - Cross-platform messaging components built on AMQP.
 * [RabbitMQ](https://www.rabbitmq.com/) - Open source Erlang-based message broker that just works.
 * [RocketMQ](https://github.com/apache/incubator-rocketmq) - A low latency, reliable, scalable, easy to use message oriented middleware born from alibaba massive messaging business.
 * [VerneMQ](https://vernemq.com/) - Open source software, extendable, and enterprise support is available.

## 5. Collector

Receive data from the agents or instrumentation frameworks. The received data is usually persisted to some kind of storage or piped to another tool.

Depending on the collector type, performance data enhancement and modification is also possible inside of the collector.

In addition, collectors can have other responsibilities. For example, some expose the data access API, configuration points for the agents or user interface for interaction with the stored data.

### Metrics

 * [Telegraf](https://github.com/influxdata/telegraf) - TICK stack, The plugin-driven server agent for collecting & reporting metrics.

### Tracing

 * [Zipkin](https://github.com/openzipkin/zipkin) - A distributed tracing system.

### Logging

 * [Graylog](https://www.graylog.org/) - Simply great centralized log management
 * [Brubeck](https://github.com/github/brubeck) - Statsd-compatible stats aggregator written in C
 * [GoAccess](https://goaccess.io/) - GoAccess is an open source real-time web log analyzer and interactive viewer that runs in a terminal in \*nix systems or through your browser. It provides fast and valuable HTTP statistics for system administrators that require a visual server report on the fly.

### Events

 * Nothing for the moment :-P

## 6. Storage

 * [Apache Cassandra]() -
 * [Checkmk]() -
 * [Cortex]() -
 * [HBase]() -  
 * [Kieker Monitoring]() -
 * [InfluxDB](https://influxdata.com) - influxdb, written in go.
 * [Prometheus](https://prometheus.io/) - The Prometheus monitoring system and time series database.
 * [Thanos](https://thanos.io/) - Highly available Prometheus setup with long term storage capabilities.
 * [Elastic Search](https://www.elastic.co/cn/products/elasticsearch) - Open Source, Distributed, RESTful Search Engine, written in java.
 * [OpenTSDB](http://opentsdb.net/) - OpenTSDB, written in java.
 * [kairosDB](http://kairosdb.github.io/) - KairosDB.
 * [Graphite](https://graphiteapp.org) - More, than a time series database. And so awesome using with Grafana.
 * [Loki]() -
 * [M3DB]() -
 * [MongoDB]() -
 * [MySQL]() -
 * [Redis]() -
 * [TimescaleDB]() -
 * [PostgreSQL]() -
 * [Nagios Core]() -
 * [Netflix Atlas]() -
 * [Open TSDB]() -

## 7. Visualization

### General

 * [Checkmk Server]() -
 * [Chronograf]() -
 * [ExplorViz]() -
 * [HAystack UI]() -
 * [Icinga Web 2]() -
 * [Prometheus Server]() -
 * [Sentry Server]() -
 * [Skywalking]() -
 * [Flame Graph]() -
 * [Flame Scope]() -

### Dashboarding

 * [Grafana](https://grafana.com) - the first really good dashboard for displaying metrics. code.
 * [Checkmk Server]() -
 * [Icinga Web 2]() -
 * [PromViz](https://github.com/nghialv/promviz) - Promviz is an application that helps you visualize the traffic of your cluster from Prometheus data
 * [Kibana](https://github.com/elastic/kibana) - Elastic stack
 * [Chronograf](https://github.com/influxdata/chronograf) - TICK stack
 * [Vizceral](https://github.com/netflix/vizceral) - vizceral is a component for displaying traffic data on a webgl canvas. If a graph of nodes and edges with data about traffic volume is provided, it will render a traffic graph animating the connection volume between nodes.
 * [Trickster](https://github.com/Comcast/trickster) - Trickster is a reverse proxy cache for the Prometheus HTTP APIv1 that dramatically accelerates dashboard rendering times for any series queried from Prometheus.
 * [InspectIT]() -
 * [Stagemonitor]() -
 * [Scouter]() -
 * [Uchiwa]() -
 * [Alerta web UI]() -
 * [netdata]() -
 * [Netflix Vector]()
 * [Netflix Atlas]() -
 * [Pinpoint Web]() -
 * [Java Flame Graph](https://github.com/saquibkhan/javaFlameGraph)
 * [Nagios Core](http://www.nagios.org/) - Computer system, network and infrastructure monitoring software application.

### Trazing

 * [Zipking]() -
 * [Jaeger]() -
 * [Kieker Trace Analysis]() -
 * [Skywalking]() -

### Uptime

 * [Monitive](http://monitive.com) - free for 1 service, checked every 10 minutes with unlimited email & twitter alerts
 * [UptimeRobot](https://uptimerobot.com) - free for 50 monitors, checked every 5 minutes

## 8. Processing & Analyze & Act

Tools for rocessing the system data.

 * Pipeline tools that receive system data in one format, buffer or generate additional value on the raw data, and usually output or store it in another or the same format.
 *  Usually ingests the data from a multitude of sources and also sends the results to different destinations.
 * Can setup alerts with a simple click or perform complex anomaly detection based on machine learning algorithms.
 * Send alerts to popular services like Slack, Email, SMS or PagerDuty.
 * Create custom triggers to perform any action. Integration with the corporative systems like Jira, CI/CD environment, source code anayze tools, etc.

### Processing

 * [Logstash](https://www.elastic.co/es/products/logstash) - Logstash is an open source, server-side data processing pipeline that ingests data from a multitude of sources simultaneously, transforms it, and then sends it to your favorite "stash."
 * [Fluentd](https://www.fluentd.org/) - Fluentd is an open source data collector for unified logging layer.
 * [Vector](https://github.com/timberio/vector) - Vector is a high-performance observability data router. It makes collecting, transforming, and sending logs, metrics, and events easy. It decouples data collection & routing from your services, giving you control and data ownership, among many other benefits.
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
 * [Kapacitor](https://github.com/influxdata/kapacitor) - TICK stack, written in go.
 * [Nagios Core](http://www.nagios.org/) - Computer system, network and infrastructure monitoring software application.
 * [Pinpoint Web]()
 * [Prometheus Alertmanager](https://github.com/prometheus/alertmanager) - Prometheus stack, Prometheus Alertmanager, written in go.
 * [Scouter Collector]()
 * [Sensu]()
 * [Skywalking]()
 * [Collectd]()
 * [Netdata]()
 * [Stagemonitor Alerter]()
 * [X-Pack](https://www.elastic.co/cn/products/x-pack) - Elastic stack.
 * [Bosun](http://bosun.org/) - Time Series Alerting Framework.
 * [Moira](https://github.com/moira-alert) - Most powerful alerting system, backed by Graphite.
 * [Alerta](https://github.com/guardian/alerta) - Distributed, scaleable and flexible monitoring system.
 * [Flapjack](http://flapjack.io/) - Monitoring notification routing & event processing system.
 * [Seyren](https://github.com/scobal/seyren) - An alerting dashboard for Graphite.

### Triggers

 * WIP

### Anomalies Detection

 * [Banshee](https://github.com/bbotte/banshee-detection_system) - real-time anomalies(outliers) detection system for periodic metrics

## 9. Observability as a Service

  * [PinPoint](https://github.com/naver/pinpoint) - Open source APM tool for large-scale distributed systems written in java.
  * [inspectIT Ocelot](https://inspectit.rocks/) - Java agent for collecting performance, tracing and business data.
  * [SkyWalking](https://skywalking.apache.org/) - Application performance monitor tool for distributed systems, especially designed for microservices, cloud native and container-based (Docker, K8s, Mesos) architectures.
  * [Kiali](https://www.kiali.io/) - Observability console for Istio with service mesh configuration capabilities. It helps you to understand the structure of your service mesh by inferring the topology, and also provides the health of your mesh.
  * [NexClipper](https://www.nexclipper.io/) - NexClipper is Open Source software for Cloud Native monitoring and operation , especailly for Kubernetes, to support enterprise environments and integrate with Prometheus
  * [Sysdig](https://sysdig.com/) - A data-first approach to delivering reliable, secure containerized applications.
  * [Falcon Plus](https://github.com/open-falcon/falcon-plus) - An open-source and enterprise-level monitoring system.
  * [NewRelic](https://newrelic.com) - complex service for both application and infrastructure monitoring
  * [DataDog](https://www.datadoghq.com) - complex service for both application and infrastructure monitoring
  * [OverOps](https://www.overops.com) - OverOps provides Automated Root Cause (ARC) analysis to reduce the time to identify and fix critical production application errors.
  * [AppDynamics](https://www.appdynamics.com/) - Business and application performance monitoring.
  * [Kamon](http://www.kamon.io/) - Monitoring applications running on the JVM.
  * [SPM](https://sematext.com/spm/) - solutions for performance monitoring.
  * [OverOps](https://www.overops.com/) - Know when and why code breaks in production.
  * [Instrumental](https://instrumentalapp.com) - Real-time application and server monitoring

## 10. References

 * https://openapm.io/landscape
 * https://github.com/crazy-canux/awesome-monitoring
 * https://github.com/Enapiuz/awesome-monitoring
 * http://www.devopsbookmarks.com/
 * https://www.dotconferences.com/2017/04/adrian-cole-observability-3-ways-logging-metrics-tracing
 * https://landscape.cncf.io/
 * https://www.influxdata.com/products/

## 11. License

[![CC0](https://mirrors.creativecommons.org/presskit/buttons/88x31/svg/cc-zero.svg)](https://creativecommons.org/publicdomain/zero/1.0)

## 12. Contributing

Contributions welcome! Read the [contribution guidelines](CONTRIBUTING.md) first.

Feel free to [open an issue](https://github.com/adriannovegil/awesome-observability/issues) or [create a pull request](https://github.com/adriannovegil/awesome-observability/pulls) with your additions.

Thank you!
