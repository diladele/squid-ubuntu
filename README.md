Squid for Ubuntu
================

> Squid is a caching proxy for the Web supporting HTTP, HTTPS, FTP, and more. It reduces bandwidth and improves response times by caching and reusing frequently-requested web pages. Squid has extensive access controls and makes a great server accelerator. It runs on most available operating systems, including Windows and is licensed under the GNU GPL.
> <cite> <http://www.squid-cache.org>

This project provides scripts needed to recompile Squid on Ubuntu 16.04 and 18.04 LTS with support for HTTPS filtering and SSL inspection. Results of the compilation are available in the public repos hosted by diladele.com.

**Squid 4.4 Repo for Ubuntu 18**
--------------------------------

If you are installing Squid 4.4 for the first time from diladele.com repo, run the following commands:

    # add diladele apt key
    wget -qO - http://packages.diladele.com/diladele_pub.asc | sudo apt-key add -

    # add repo
    echo "deb http://squid44.diladele.com/ubuntu/ bionic main" > /etc/apt/sources.list.d/squid44.diladele.com.list

    # update the apt cache
    apt-get update

    # install 
    apt-get install squid-common
    apt-get install squid 
    apt-get install squidclient

If you have installed previous versions of Squid 4 from this repo then run "sudo apt-get update && sudo apt-get upgrade".  Also check that your current squid.conf file from previous version is not overwritten.

**Squid 4.4 Repo for Ubuntu 16**
--------------------------------

Unfortunately there is no online repo for this version of Ubuntu. If possible consider switching to Squid 4 running on Ubuntu 18. 
To rebuild the Squid 4 on your instance of Ubuntu 16 LTS, download scripts from stc/ubunt16 to your target machine and run these one by one.


	$ sudo bash 01_update.sh
    $ sudo bash 02_tools.sh
    $ bash 03_build_ecap.sh
    $ sudo bash 04_install_ecap.sh
    $ bash 05_build_squid.sh
    $ sudo bash 06_install_squid.sh
    $ sudo bash 07_acceptance.sh

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
