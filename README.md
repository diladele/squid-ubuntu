Squid for Ubuntu
================

> Squid is a caching proxy for the Web supporting HTTP, HTTPS, FTP, and more. It reduces bandwidth and improves response times by caching and reusing frequently-requested web pages. Squid has extensive access controls and makes a great server accelerator. It runs on most available operating systems, including Windows and is licensed under the GNU GPL.
> <cite> <http://www.squid-cache.org>

This project provides scripts needed to recompile modern version of Squid on Ubuntu 16 and 18/20 with support for HTTPS filtering and SSL inspection. Results of the compilation are available in the public repos hosted by diladele.com.

**Squid 4.13 Repo for Ubuntu 18**
---------------------------------

If you are installing Squid 4.13 for the first time from diladele.com repo, run the following commands:

    # add diladele apt key
    wget -qO - http://packages.diladele.com/diladele_pub.asc | sudo apt-key add -

    # add repo
    echo "deb http://squid413.diladele.com/ubuntu/ bionic main" > /etc/apt/sources.list.d/squid413.diladele.com.list

    # update the apt cache
    apt-get update

    # install 
    apt-get install squid-common
    apt-get install squid 
    apt-get install squidclient

If you have installed previous versions of Squid 4 from this repo then run "sudo apt-get update && sudo apt-get upgrade". Also check that your current squid.conf file from previous version is not overwritten.

**Squid 4.13 Repo for Ubuntu 20**
---------------------------------

Unfortunately there is no online repo for this version of Ubuntu yet. To rebuild the Squid 4 on your instance of Ubuntu 20, download scripts from src/ubuntu18 (yes 18!) to your target machine and run these one by one.


    $ sudo bash 01_update.sh
    $ sudo bash 02_tools.sh
    $ bash 03_build_squid.sh
    $ sudo bash 04_install_squid.sh
    $ sudo bash 05_acceptance.sh

**Squid 4.13 Repo for Ubuntu 16**
---------------------------------

Unfortunately there is no online repo for this version of Ubuntu. If possible consider switching to Squid 4 running on Ubuntu 18. 
To rebuild the Squid 4 on your instance of Ubuntu 16 LTS, download scripts from src/ubuntu16 to your target machine and run these one by one.


	$ sudo bash 01_update.sh
    $ sudo bash 02_tools.sh
    $ bash 03_build_ecap.sh
    $ sudo bash 04_install_ecap.sh
    $ bash 05_build_squid.sh
    $ sudo bash 06_install_squid.sh
    $ sudo bash 07_acceptance.sh

**HTTP and HTTPS Filtering Using Squid and ICAP**
-------------------------------------------------
In case you need a high quality HTTP(S) web filtering solution, take a look at [**Web Safety**](https://www.diladele.com). 

Web Safety for Squid Proxy is an ICAP web filtering server that integrates with Squid proxy server and provides rich content and web filtering functionality to sanitize Internet traffic passing into an internal home/enterprise network. It may be used to block illegal or potentially malicious file downloads, remove annoying advertisements, prevent access to various categories of web sites and block resources with adult/explicit content.

Web Safety also has a very good Admin UI that you can use to manage your Squid proxy from the browser. 

To try it out, have a look at [Virtual Appliance ESXi/Hyper-v](https://www.diladele.com/download.html), [deploy in Microsoft Azure](https://azuremarketplace.microsoft.com/en-us/marketplace/apps/diladele.websafety?tab=Overview) or [deploy in Amazon AWS](https://aws.amazon.com/marketplace/pp/B07KJHLHKC)

**DNS Filter**
--------------

In case full featured HTTPS decryption and web filtering is not possible in your network, consider using our lightweight DNS filtering solution https://dnssafety.diladele.com. Dns Safety filter is a DNS forwarding server (like dnsmasq, pi-hole) with extensive filtering capabilities. It allows administrator to filter access to domain names by categories, easily block access to user specified domains and provides different access policies for different groups of machines in your network.

Dns Safety is supposed to be deployed as primary DNS server in your local network and can forward DNS requests to your ISP's DNS server, Google Public DNS, OpenDNS and other third party DNS providers. Internal DNS requests can be forwarded to internal DNS servers (for example Active Directory domain controllers).

The filter can be easily managed from full featured Web UI deployed on Debian 10 or Ubuntu 18. Other operating systems might be supported too in the near future.

**Help**
--------

All questions/comments and suggestions are welcome at support@diladele.com or in squid mailing list http://www.squid-cache.org/Support/mailing-lists.html. Squid documentation can be found at http://www.squid-cache.org

**Credits**
-----------
We admire people working on Squid Cache server, who spend their time free of charge and deliver great product to all of us.
