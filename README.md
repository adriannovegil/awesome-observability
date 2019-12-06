# Awesome Observability

> __Metrics__, __Logs__ and __Traces__: The Golden Triangle of Observability in Monitoring

This repo is not only for monitoring. As said Adrian Cole’s in the talk about "[Observability 3 Ways](https://www.dotconferences.com/2017/04/adrian-cole-observability-3-ways-logging-metrics-tracing)" we are going to focus on the three types of systems necessaries to understand how your applications behave: Logging, Metrics & Tracing.

## Best Practices

 * [Best practices for monitoring cloud applications
](https://docs.microsoft.com/en-us/azure/architecture/best-practices/monitoring)
 * [The Three Pillars of Observability](https://learning.oreilly.com/library/view/distributed-systems-observability/9781492033431/ch04.html)

## Accumulate

Get any data – metrics, events, logs, traces – from everywhere – systems, sensors, queues, databases and networks – and store in a server capable of ingesting millions of data points per second.

### Metrics

 * [Opentelemetry](https://opentelemetry.io/) - OpenTelemetry is made up of an integrated set of APIs and libraries as well as a collection mechanism via an agent and collector.
 * [OpenCensus](https://opencensus.io/) - OpenCensus is a set of libraries for various languages that allow you to collect application metrics and distributed traces, then transfer the data to a backend of your choice in real time.
 * [Opentracing](https://opentracing.io/) - Vendor-neutral APIs and instrumentation for distributed tracing.
 * [Openmetrics](https://openmetrics.io/) - An effort to create an open standard for transmitting metrics at scale, with support for both text representation and Protocol Buffers.
 * [Micrometer](https://micrometer.io/) - Micrometer provides a simple facade over the instrumentation clients for the most popular monitoring systems, allowing you to instrument your JVM-based application code without vendor lock-in. Think SLF4J, but for metrics.
 * [telegraf](https://github.com/influxdata/telegraf) - TICK stack, The plugin-driven server agent for collecting & reporting metrics.
 * [node-exporter](https://github.com/prometheus/node_exporter) - Prometheus stack, Exporter for machine metrics.
 * [beats](https://github.com/elastic/beats) - Lightweight shippers for Elasticsearch & Logstash, Elastic stack
 * [collectd](http://collectd.org/) - The system statistics collection daemon.
 * [tcollector](https://github.com/OpenTSDB/tcollector) - Data collection framework for OpenTSDB.
 * [Java Melody](https://github.com/javamelody/javamelody/wiki) - Monitoring of JavaEE applications.
 * [GoAccess](https://goaccess.io/) - GoAccess is an open source real-time web log analyzer and interactive viewer that runs in a terminal in \*nix systems or through your browser. It provides fast and valuable HTTP statistics for system administrators that require a visual server report on the fly.

### Tracing

 * [Zipkin](https://github.com/openzipkin/zipkin) - A distributed tracing system.
 * [Sleuth](https://spring.io/projects/spring-cloud-sleuth) - Spring Cloud Sleuth implements a distributed tracing solution for Spring Cloud, borrowing heavily from Dapper, Zipkin and HTrace.
 * [Jaeger](https://www.jaegertracing.io/) - Monitor and troubleshoot transactions in complex distributed systems

### Logging

 * [Graylog](https://www.graylog.org/) - Simply great centralized log management
 * [Brubeck](https://github.com/github/brubeck) - Statsd-compatible stats aggregator written in C
 * [Loki](https://grafana.com/oss/loki) - Prometheus-inspired logging for cloud natives

## Processing & Analyze

Perform analytics across all data sets.

### Storage

 * [influxdata](https://influxdata.com) - influxdb, written in go.
 * [prometheus](https://prometheus.io/) - The Prometheus monitoring system and time series database.
 * [Thanos](https://thanos.io/) - Highly available Prometheus setup with long term storage capabilities.
 * [Trickster](https://github.com/Comcast/trickster) - Trickster is a reverse proxy cache for the Prometheus HTTP APIv1 that dramatically accelerates dashboard rendering times for any series queried from Prometheus.
 * [elasticsearch](https://www.elastic.co/cn/products/elasticsearch) - Open Source, Distributed, RESTful Search Engine, written in java.
 * [OpenTSDB](http://opentsdb.net/) - OpenTSDB, written in java.
 * [kairosDB](http://kairosdb.github.io/) - KairosDB.
 * [Graphite](https://graphiteapp.org) - More, than a time series database. And so awesome using with Grafana.

### Messaging

 * [ØMQ](http://zeromq.org/) - Brokerless intelligent transport layer.
 * [ActiveMQ](http://activemq.apache.org/) - Powerful open source messaging and integration patterns server.
 * [Aeron](https://github.com/real-logic/Aeron) - Efficient reliable UDP unicast, UDP multicast, and IPC message transport.
 * [Apollo](http://activemq.apache.org/apollo/) - Faster, more reliable, easier to maintain messaging broker built from the foundations of the original ActiveMQ.
 * [Ascoltatori](https://github.com/mcollina/ascoltatori) - Pub/sub library for Node.
 * [Beanstalk](http://kr.github.io/beanstalkd/) - Simple, fast work queue.
 * [Disque](https://github.com/antirez/disque) - Distributed message broker.
 * [Eventuate](http://eventuate.io/) - A platform for developing asynchronous microservices solving the distributed data management problems.
 * [Kafka](http://kafka.apache.org/) - Publish-subscribe messaging rethought as a distributed commit log.
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
 * [VerneMQ](https://verne.mq) - Open source, scalable, Erlang-based MQTT broker.

### Processing

 * [Logstash](https://www.elastic.co/es/products/logstash) - Logstash is an open source, server-side data processing pipeline that ingests data from a multitude of sources simultaneously, transforms it, and then sends it to your favorite "stash."
 * [Fluentd](https://www.fluentd.org/) - Fluentd is an open source data collector for unified logging layer.
 * [Vector](https://github.com/timberio/vector) - Vector is a high-performance observability data router. It makes collecting, transforming, and sending logs, metrics, and events easy. It decouples data collection & routing from your services, giving you control and data ownership, among many other benefits.

## Act

St up alerts with a simple click or perform complex anomaly detection based on machine learning algorithms.

Send alerts to popular services like Slack, SMS and PagerDuty.

Create custom triggers to perform any action.

### Visualization

 * [Grafana](https://grafana.com) - the first really good dashboard for displaying metrics. code.
 * [Kibana](https://github.com/elastic/kibana) - Elastic stack
 * [Chronograf](https://github.com/influxdata/chronograf) - TICK stack
 * [Vizceral](https://github.com/netflix/vizceral) - vizceral is a component for displaying traffic data on a webgl canvas. If a graph of nodes and edges with data about traffic volume is provided, it will render a traffic graph animating the connection volume between nodes.
 * [Flame Graphs]()
 * [Netflix Vector]()
 * [Flame Scope]()
 * [Java Flame Graph](https://github.com/saquibkhan/javaFlameGraph)

### Alerts

 * [Kapacitor github](https://github.com/influxdata/kapacitor) - TICK stack, written in go.
 * [Alertmanager github](https://github.com/prometheus/alertmanager) - Prometheus stack, Prometheus Alertmanager, written in go.
 * [X-Pack](https://www.elastic.co/cn/products/x-pack) - Elastic stack.
 * [Bosun](http://bosun.org/) - Time Series Alerting Framework.
 * [Moira](https://github.com/moira-alert) - Most powerful alerting system, backed by Graphite.
 * [Alerta](https://github.com/guardian/alerta) - Distributed, scaleable and flexible monitoring system.
 * [Flapjack](http://flapjack.io/) - Monitoring notification routing & event processing system.
 * [Seyren](https://github.com/scobal/seyren) - An alerting dashboard for Graphite.

### Triggers

 * WIP

## Products

 * [PinPoint](https://github.com/naver/pinpoint) - Open source APM tool for large-scale distributed systems written in java.
 * [inspectIT Ocelot](https://inspectit.rocks/) - Java agent for collecting performance, tracing and business data.
 * [SkyWalking](https://skywalking.apache.org/) - Application performance monitor tool for distributed systems, especially designed for microservices, cloud native and container-based (Docker, K8s, Mesos) architectures.
 * [Kiali](https://www.kiali.io/) - Observability console for Istio with service mesh configuration capabilities. It helps you to understand the structure of your service mesh by inferring the topology, and also provides the health of your mesh.
 * [NexClipper](https://www.nexclipper.io/) - NexClipper is Open Source software for Cloud Native monitoring and operation , especailly for Kubernetes, to support enterprise environments and integrate with Prometheus
 * [Sysdig](https://sysdig.com/) - A data-first approach to delivering reliable, secure containerized applications.
 * [falcon-plus](https://github.com/open-falcon/falcon-plus) - An open-source and enterprise-level monitoring system.
 * [NewRelic](https://newrelic.com) - complex service for both application and infrastructure monitoring
 * [DataDog](https://www.datadoghq.com) - complex service for both application and infrastructure monitoring
 * [OverOps](https://www.overops.com) - OverOps provides Automated Root Cause (ARC) analysis to reduce the time to identify and fix critical production application errors.
 * [AppDynamics](https://www.appdynamics.com/) - Business and application performance monitoring.
 * [Kamon](http://www.kamon.io/) - Monitoring applications running on the JVM.
 * [SPM](https://sematext.com/spm/) - solutions for performance monitoring.
 * [OverOps](https://www.overops.com/) - Know when and why code breaks in production.
 * [Instrumental](https://instrumentalapp.com) - Real-time application and server monitoring

## Uptime

 * [Monitive](http://monitive.com) - free for 1 service, checked every 10 minutes with unlimited email & twitter alerts
 * [UptimeRobot](https://uptimerobot.com) - free for 50 monitors, checked every 5 minutes

## Chaos Engineer

 * [My Awesome Chaos Engineering Repo ;-)](https://github.com/adriannovegil/awesome-chaos-engineering)

## Load Generators

 * [JMeter](https://jmeter.apache.org/) - Java application designed to load test functional behavior and measure performance. It was originally designed for testing Web Applications but has since expanded to other test functions.
 * [Gatling](https://gatling.io/) - Load test as code
 * [Vegeta](https://github.com/tsenart/vegeta) - HTTP load testing tool built out of a need to drill HTTP services with a constant request rate. It can be used both as a command line utility and a library.

## Anomalies

 * [Banshee](https://github.com/eleme/banshee) - real-time anomalies(outliers) detection system for periodic metrics

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

## Web Analytics

 * [Piwik](https://piwik.org) - open source alternative to Google Analytics
 * [Heap Analytics](https://heapanalytics.com) - easy event tracking without coding

## Bug Tracking

 * [Sentry](https://getsentry.com/) - Application monitoring, event logging and aggregation.

## Database (Tools for monitoring databases)

 * [Anemometer](https://github.com/box/Anemometer) - MySQL Slow Query Monitor
 * [mytop](https://linux.die.net/man/1/mytop) - Display MySQL server performance info like 'top'

## Network

 * [Cacti](http://www.cacti.net) - Web-based network monitoring and graphing tool.
 * [Observium](http://www.observium.org/) - SNMP monitoring for servers and networking devices. Runs on linux.
 * [LibreNMS](https://github.com/librenms/librenms/) - fork of Observium.
 * [Munin](http://munin-monitoring.org/) - Networked resource monitoring tool.

## Operating System

 * [Dash](https://github.com/afaqurk/linux-dash) - A low-overhead monitoring web dashboard for a GNU/Linux machine.
 * [Monit](http://mmonit.com/monit/#home) - Small Open Source utility for managing and monitoring Unix systems.
 * [Perf](http://www.brendangregg.com/perf.html) - Performance analyzing tool in Linux
 * [Hotspot](https://github.com/KDAB/hotspot) - The Linux perf GUI for performance analysis.
 * [BPF](http://www.brendangregg.com/bpf-performance-tools-book.html) - Technology used in certain computer operating systems for programs that need to, among other things, analyze network traffic
 * [eBPF](http://www.brendangregg.com/ebpf.html) - extended BPF (eBPF) variant has become a universal in-kernel virtual machine, that has hooks all over the kernel
 * [bcc](https://github.com/iovisor/bcc) - Tools for BPF-based Linux IO analysis, networking, monitoring, and more
 * [CoPilot]()

## References

 * https://github.com/crazy-canux/awesome-monitoring
 * https://github.com/Enapiuz/awesome-monitoring
 * http://www.devopsbookmarks.com/
 * https://www.dotconferences.com/2017/04/adrian-cole-observability-3-ways-logging-metrics-tracing
 * https://landscape.cncf.io/
 * https://www.influxdata.com/products/

## License

[![CC0](https://mirrors.creativecommons.org/presskit/buttons/88x31/svg/cc-zero.svg)](https://creativecommons.org/publicdomain/zero/1.0)

## Contributing

 Contributions welcome! Read the [contribution guidelines](CONTRIBUTING.md) first.

 Feel free to [open an issue](https://github.com/adriannovegil/awesome-observability/issues) or [create a pull request](https://github.com/adriannovegil/awesome-observability/pulls) with your additions.

 Thank you!
