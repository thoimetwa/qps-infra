# Installation Guide

## Hardware requirements/prerequisites
**Recommended:**
<ul><li> Linux Ubuntu (8+ core, 32RAM, SSD 512Gb+)</ul>

### MCloud hardware requirements
**CPU**
<ul>
<li> product: Intel(R) Core(TM) i5-7400 CPU @ 3.00GHz
<li> vendor: Intel Corp.
<li> physical id: 4b
<li> bus info: cpu@0
<li> version: Intel(R) Core(TM) i5-7400 CPU @ 3.00GHz
<li> serial: To Be Filled By O.E.M.
<li> slot: LGA1151
<li> size: 2462MHz
<li> capacity: 4005MHz
<li> width: 64 bits
<li> clock: 100MHz
 </ul>
**Motherboard**
<ul>
<li> SMBIOS 3.0.0 present.
<li> Handle 0x0002, DMI type 2, 15 bytes
<li> Base Board Information
  <ul>
   <li> Manufacturer: ASUSTeK COMPUTER INC.
   <li> Product Name: PRIME H270M-PLUS
   <li> Version: Rev X.0x
   <li> Serial Number: 161292411902325
   <li> Asset Tag: Default string
  </ul>
<li> Features:
  <ul> <li> Board is a hosting board
   <li> Board is replaceable </ul>   
<li> Location In Chassis: Default string
<li> Chassis Handle: 0x0003
<li> Type: Motherboard
<li> Contained Object Handles: 0
</ul>
**RAM**
<ul>
<li> X2 - Kingston 16GB 2133 MHz
<li> Array Handle: 0x0042
 <ul>
  <li> Error Information Handle: Not Provided
  <li> Total Width: 64 bits
  <li> Data Width: 64 bits
  <li> Size: 16384 MB
  <li> Form Factor: DIMM
  <li> Set: None
  <li> Locator: ChannelA-DIMM2
  <li> Bank Locator: BANK 1
  <li> Type: DDR4
  <li> Type Detail: Synchronous
  <li> Speed: 2133 MHz
  <li> Manufacturer: Kingston
  <li> Serial Number: 193A2FD5
  <li> Asset Tag: 9876543210
  <li> Part Number: 9905625-065.A00G    
  <li> Rank: 2
  <li> Configured Clock Speed: 2133 MHz
  <li> Minimum Voltage: 1.2 V
  <li> Maximum Voltage: 1.2 V
  <li> Configured Voltage: 1.2 V
 </ul>
</ul>
 **SSD**
 <ul> <li> Model Number: KINGSTON SHFS37A480G                    
  <li> Serial Number: 50026B726900792F    
  <li> Firmware Revision: 603ABBF0
  <li> Transport: Serial, ATA8-AST, SATA 1.0a, SATA II Extensions, SATA Rev 2.5, SATA Rev 2.6, SATA Rev 3.0   </ul>
 
## Software requirements/prerequisites
* Docker requires a user with uid=1000 and gid=1000 for simple volumes sharing, etc.
 > Note: to verify the current user uid/gid, execute
  ```
  id
  uid=1000(ubuntu) gid=1000(ubuntu) groups=1000(ubuntu),4(adm),20(dialout),24(cdrom),25(floppy),27(sudo),29(audio),30(dip),44(video),46(plugdev),102(netdev),999(docker
  ```
  ***
<ul>
  <li> Install docker 
  <ul>
    <li> [Ubuntu 16.04](http://www.techrepublic.com/article/how-to-install-docker-on-ubuntu-16-04/)
     <li> [Ubuntu 18.04](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-18-04)
     <li> [MacOS](https://pilsniak.com/how-to-install-docker-on-mac-os-using-brew/)
  </ul>
 <li> Install docker-composer
</ul>
 [docker-composer](https://docs.docker.com/compose/install/#install-compose)

## Initial setup
* Clone [qps-infra](https://github.com/qaprosoft/qps-infra). You can also create your private repo to migrate the infrastructure easily
* Go to the qps-infra folder and launch the setup.sh script providing your hostname or ip address as an argument
```
git clone https://github.com/qaprosoft/qps-infra.git
cd qps-infra
./setup.sh myhost.domain.com
```
* Optional: adjust docker-compose.yml file by removing unused services. By default, it contains such group of services:</br>
      * NGiNX WebServer: nginx 
      * Reporting Toolset: postgres, zafira/zafira-ui, rabbitmq, elasticsearch, redis, logstash 
      * CI: jenkins-master, jenkins-slave-web, jenkins-slave-api 
      * Web and mobile selenium hubs: selenium hub, ggr, selenoid 
      * Local storage: ftp 
      * Sonarqube: sonarqube 
> Note: It has sense to disable whole group. Also make sure to update depends_on in docker-compose and ./nginx/conf/default.conf to disable/comment services.

## Security setup  (strongly recommended for publicly available environments)
* Regenerate AUTH_TOKEN_SECRET for production environment. (It should be base64 encoded value based on randomized string)
* Regenerate CRYPTO_SALT value (it should be randomized alpha-numeric string)
* Update default credentials in variables.env
  > Note: If you change RABBITMQ_USER and RABBITMQ_PASS, please, update them in config/definitions.json and config/logstash.conf files as well  
  
## Start services
```
./start.sh
```

## Env details
* After QPS-Infra startup, the following components are available. Take a look at variables.env for default credentials:
     * [Jenkins - http://demo.qaprosoft.com/jenkins](http://demo.qaprosoft.com/jenkins)
     * [Selenium Grid - http://demo.qaprosoft.com/mcloud/grid/console](http://demo.qaprosoft.com/mcloud/grid/console)
     * [Zafira Reporting Tool - http://demo.qaprosoft.com/app](http://demo.qaprosoft.com/app)
     * [SonarQube - http://demo.qaprosoft.com/sonarqube](http://demo.qaprosoft.com/sonarqube)
 > Note: Use your host domain address or IP.
 > Note: admin/qaprosoft are hardcoded sonarqube credentials, and they can be updated inside the Sonar Administration panel
  

## Troubleshooting

## Support Channel

* Join [Telegram channel](https://t.me/qps_infra) in case of any question
