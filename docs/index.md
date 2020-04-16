QPS Infrastructure
==================

[![zafira pulls](https://img.shields.io/docker/pulls/qaprosoft/zafira.svg?label=zafira%20pulls)](https://hub.docker.com/r/qaprosoft/zafira/)
[![rabbitmq pulls](https://img.shields.io/docker/pulls/qaprosoft/rabbitmq.svg?label=rabbitmq%20pulls)](https://hub.docker.com/r/qaprosoft/rabbitmq/)
[![jenkins-master pulls](https://img.shields.io/docker/pulls/qaprosoft/jenkins-master.svg?label=jenkins-master%20pulls)](https://hub.docker.com/r/qaprosoft/jenkins-master/)
[![jenkins-slave pulls](https://img.shields.io/docker/pulls/qaprosoft/jenkins-slave.svg?label=jenkins-slave%20pulls)](https://hub.docker.com/r/qaprosoft/jenkins-slave/)
[![postgres pulls](https://img.shields.io/docker/pulls/qaprosoft/postgres.svg?label=postgres%20pulls)](https://hub.docker.com/r/qaprosoft/postgres/)

QPS-Infra is a dockerized QA infrastructure solution for Test Automation. It is integrated by default with [carina-core](http://www.carina-core.io) open source framework and uses Jenkins as a CI Tool.

* QPS-Infra is built on top of popular docker solutions, it includes Postgres database, [Zafira Reporting Tool](http://qaprosoft.github.io/zafira), Jenkins Master/Slaves Nodes, Selenium Hub, SonarQube, RabbitMQ, etc.

* All components are deployed under NGINX WebServer which can be configured in a fully secured environment

* QPS-Infra and its subcomponents all together can be used as an effective Test Automation infrastructure for test automation development, execution, management, etc.

![Alt text](https://raw.githubusercontent.com/qaprosoft/qps-infra/master/docs/img/qps-infra.png?raw=true "QPS-Infra")

## License
Code - [Apache Software License v2.0](http://www.apache.org/licenses/LICENSE-2.0)

Documentation and Site - [Creative Commons Attribution 4.0 International License](http://creativecommons.org/licenses/by/4.0/deed.en_US)
