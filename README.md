Squid for Ubuntu
============

> Squid is a caching proxy for the Web supporting HTTP, HTTPS, FTP, and more. It reduces bandwidth and improves response times by caching and reusing frequently-requested web pages. Squid has extensive access controls and makes a great server accelerator. It runs on most available operating systems, including Windows and is licensed under the GNU GPL.
> <cite> <http://www.squid-cache.org>

This project provides scripts needed to recompile 3.5.23 on Ubuntu 16.04 LTS with support for HTTPS filtering and SSL inspection. The compiled debian packages for eCap and Squid 3.5.23 are available at ubuntu16.diladele.com repository.

**How to Use the Repository at ubuntu16.diladele.com** for Ubuntu 16
--------------------------------------------------------------------

If you are installing Squid 3.5.23 for the first time run the following commands:

	# add diladele apt key
	wget -qO - http://packages.diladele.com/diladele_pub.asc | sudo apt-key add -

    # add repo
    echo "deb http://ubuntu16.diladele.com/ubuntu/ xenial main" > /etc/apt/sources.list.d/ubuntu16.diladele.com.list

    # update the apt cache
    apt-get update

    # install 
    apt-get install libecap3
    apt-get install squid-common
    apt-get install squid 
    apt-get install squidclient

If you have installed previous versions of Squid 3.5 from this repo then please run "sudo apt-get update && sudo apt-get upgrade".  Please also check that your current squid.conf file from previous version is not overwritten.

**HTTP and HTTPS Filtering Using Squid and ICAP**
-----------------------------
In case you need a high quality HTTP(s) traffic filtering solution, we recommend [**Diladele Web Safety**](https://www.diladele.com). 

Web Safety for Squid Proxy is an ICAP web filtering server that integrates with Squid proxy server and provides rich content and web filtering functionality to sanitize Internet traffic passing into an internal home/enterprise network. It may be used to block illegal or potentially malicious file downloads, remove annoying advertisements, prevent access to various categories of web sites and block resources with adult/explicit content.

To try it out please have a look at our [Virtual Appliance](https://www.diladele.com/virtual_appliance.html).

**Help**
--------

All questions/comments and suggestions are welcome at support@diladele.com or in squid mailing list http://www.squid-cache.org/Support/mailing-lists.html. Squid documentation can be found at http://www.squid-cache.org

**Credits**
-----------
We admire people working on Squid Cache server, who spend their time free of charge and deliver great product to all of us.
