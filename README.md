Squid for Ubuntu
================

> Squid is a caching proxy for the Web supporting HTTP, HTTPS, FTP, and more. It reduces bandwidth and improves response times by caching and reusing frequently-requested web pages. Squid has extensive access controls and makes a great server accelerator. It runs on most available operating systems, including Windows and is licensed under the GNU GPL.
> <cite> <http://www.squid-cache.org>

This project provides scripts needed to recompile Squid on Ubuntu 16.04 and 18.04 LTS with support for HTTPS filtering and SSL inspection. Results of the compilation are available in the public repos hosted by diladele.com.

**Squid 4.3 Repo for Ubuntu 18**
--------------------------------

If you are installing Squid 4.3 for the first time from diladele.com repo, run the following commands:

    # add diladele apt key
    wget -qO - http://packages.diladele.com/diladele_pub.asc | sudo apt-key add -

    # add repo
    echo "deb http://squid43.diladele.com/ubuntu/ bionic main" > /etc/apt/sources.list.d/squid43.diladele.com.list

    # update the apt cache
    apt-get update

    # install 
    apt-get install squid-common
    apt-get install squid 
    apt-get install squidclient

If you have installed previous versions of Squid 4 from this repo then run "sudo apt-get update && sudo apt-get upgrade".  Also check that your current squid.conf file from previous version is not overwritten.

**Squid 3.5.27 Repo for Ubuntu 16**
-----------------------------------

If you are installing Squid 3.5.27 for the first time from diladele.com repo, run the following commands:

	# add diladele apt key
	wget -qO - http://packages.diladele.com/diladele_pub.asc | sudo apt-key add -

    # add repo
    echo "deb http://squid3527.diladele.com/ubuntu/ xenial main" | sudo tee /etc/apt/sources.list.d/squid3527.diladele.com.list

    # update the apt cache
    sudo apt-get update

    # install 
    sudo apt-get install libecap3 squid-common squid squidclient

If you have installed previous versions of Squid 3.5 from this repo then please run "sudo apt-get update && sudo apt-get upgrade".  Please also check that your current squid.conf file from previous version is not overwritten.

**HTTP and HTTPS Filtering Using Squid and ICAP**
-------------------------------------------------
In case you need a high quality HTTP(S) traffic filtering solution, take a look at [**Web Safety**](https://www.diladele.com). 

Web Safety for Squid Proxy is an ICAP web filtering server that integrates with Squid proxy server and provides rich content and web filtering functionality to sanitize Internet traffic passing into an internal home/enterprise network. It may be used to block illegal or potentially malicious file downloads, remove annoying advertisements, prevent access to various categories of web sites and block resources with adult/explicit content.

To try it out, have a look at [Virtual Appliance ESXi/Hyper-v](https://www.diladele.com/virtual_appliance.html) or [deploy in Microsoft Azure](https://azuremarketplace.microsoft.com/en-us/marketplace/apps/diladele.websafety?tab=Overview)

**Help**
--------

All questions/comments and suggestions are welcome at support@diladele.com or in squid mailing list http://www.squid-cache.org/Support/mailing-lists.html. Squid documentation can be found at http://www.squid-cache.org

**Credits**
-----------
We admire people working on Squid Cache server, who spend their time free of charge and deliver great product to all of us.
