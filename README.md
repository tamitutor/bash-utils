CheckPort
=========

Extremely simple bash script to check if a port on an internal LAN is open to the outside

Assumptions
-----------

You are using some sort of *nix or BSD flavored system with a bash shell

Installation
------------

Very simple: download and install to a bin directory in your bath

  1.  To find what directories are in your path type the following at the command line
  
  ```bash
  $ echo $PATH
  ```

Usage
-----

checkport.sh [port number]

Dependencies
------------

1.  Curl
2.  Third party websites/services:

    *  Get your external IP address:  
       http://ifconfig.me/ip
    *  Check port availability of your external IP address:  
       http://www.canyouseeme.org
    
    If these are down or too slow you may replace with any other services that perform similar functions.  

Disclaimers
-----------
Be aware that determining the result of the port availability is specific to the output received from http://www.canyouseeme.org.  If you swap out canyouseeme.org with another site or service you will need to modify the curl and grep command on line 9 of the script accordingly.
