Squid for Ubuntu
================

> Squid is a caching proxy for the Web supporting HTTP, HTTPS, FTP, and more. It reduces bandwidth and improves response times by caching and reusing frequently-requested web pages. Squid has extensive access controls and makes a great server accelerator. It runs on most available operating systems, including Windows and is licensed under the GNU GPL.
> <cite> <http://www.squid-cache.org>

This project provides scripts needed to recompile modern version of Squid on Ubuntu 20.04 LTS with support for HTTPS filtering and SSL inspection. Results of the compilation are available in the public repos hosted by diladele.com.

**Squid 5.5 Repo for Ubuntu 20.04 LTS**
----------------------------------------

If you are installing Squid 5.5 for the first time from diladele.com repo, run the following commands:

    # add diladele apt key
    wget -qO - https://packages.diladele.com/diladele_pub.asc | sudo apt-key add -

    # add new repo
    echo "deb https://squid55.diladele.com/ubuntu/ focal main" \
        > /etc/apt/sources.list.d/squid55.diladele.com.list

    # and install
    apt-get update && apt-get install -y \
        squid-common \
        squid-openssl \
        squidclient \
        libecap3 libecap3-dev

If you have installed previous versions of Squid 5 from this repo then run "sudo apt-get update && sudo apt-get upgrade". Also check that your current squid.conf file from previous version is not overwritten.

**Squid 4.13 Repo for Ubuntu 20.04 LTS**
----------------------------------------

If you are installing Squid 4.13 for the first time from diladele.com repo, run the following commands:

    # add diladele apt key
    wget -qO - https://packages.diladele.com/diladele_pub.asc | sudo apt-key add -

    # add new repo
    echo "deb https://squid413-ubuntu20.diladele.com/ubuntu/ focal main" \
        > /etc/apt/sources.list.d/squid413-ubuntu20.diladele.com.list

    # and install
    apt-get update && apt-get install -y \
        squid-common \
        squid-openssl \
        squidclient \
        libecap3 libecap3-dev

If you have installed previous versions of Squid 4 from this repo then run "sudo apt-get update && sudo apt-get upgrade". Also check that your current squid.conf file from previous version is not overwritten.

**HTTP and HTTPS Filtering Using Squid and ICAP**
-------------------------------------------------
In case you need a high quality HTTP(S) web filtering solution, take a look at [**Web Safety**](https://www.diladele.com). 

Web Safety for Squid Proxy is an ICAP web filtering server that integrates with Squid proxy server and provides rich content and web filtering functionality to sanitize Internet traffic passing into an internal home/enterprise network. It may be used to block illegal or potentially malicious file downloads, remove annoying advertisements, prevent access to various categories of web sites and block resources with adult/explicit content.

Web Safety also has a very good Admin UI that you can use to manage your Squid proxy from the browser. 

To try it out, have a look at [Virtual Appliance ESXi/Hyper-v](https://www.diladele.com/download.html), [deploy in Microsoft Azure](https://azuremarketplace.microsoft.com/en-us/marketplace/apps/diladele.websafety?tab=Overview) or [deploy in Amazon AWS](https://aws.amazon.com/marketplace/pp/B07KJHLHKC)

**Web Filtering Proxy for Microsoft Windows**
---------------------------------------------

If your need a native Windows only web filtering solution please consider taking a look at [Web Filtering Proxy](https://webproxy.diladele.com). Web Filtering Proxy for Microsoft Windows is a new implementation of web filtering proxy running natively on Microsoft Windows. It can be easily integrated with Microsoft Active Directory, work as Secure Web Proxy, decrypt HTTPS traffic, filter HTTP requests and responses and inspect contents of HTML pages.

The proxy is installed natively on Microsoft Windows and can be managed by any administrator using Microsoft Management Console. The [Admin Guide](https://webproxy.diladele.com/docs/) is available online.

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
