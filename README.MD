Create an elasticsearch cluster with docker.  This instance is based on the **docker-elk** elasticsearch stack.  Please refer to the **docker-elk-README.md** for more information.

# Prerequisites

Install Docker and docker-compose    
Start Docker and be sure it's running  

# Installing

Install git **https://git-scm.com/downloads**    
Clone the vatrp-log-analysis directory, **https://git.codev.mitre.org/projects/FCCTASK2/repos/vatrp-log-analysis/browse**

## Linux

As a sudo user, open a Terminal window and run 
    **./installLogTool.sh**

## Windows

Open a Powershell window and run 
    **./installLogTool.sh**

This starts up the docker containers and creates some of the visualizations.

# After the first run

## Linux

Open a Terminal window and run 
    **./startLogTool.sh**

## Windows

Open a Powershell window and run 
    **./startLogTool.sh**

# Explore the data

Open a browser and point to localhost:5601.    
In the upper-left, there is a logo for Elastic.  Right underneath that, is a menu icon.  Click on that, and you'll see a list of different things you can do.  
Under the **Analytics** sub-heading, click on **Dashboard** 
To the right, click on the link for **vatrp sip code dashboard**.  You'll see several panels.  To see data, on the right-hand side, click on the calendar icon next to "KQL" and select **Last 1 year**.    
The data may refresh automatically.  If not, click **Refresh**.  Data should appear.  
On the pie chart, you'll see the sip codes and explanations.  On the right is a table of sip codes and their explanations, and all sip messages.

# Adding log files

The repo comes with some sample log files in the demo-logs folder.  To add these for testing, or to add other log files to the dashboard, copy the files into the logs directory.  The log analysis tool will discover them there and add them to the dashboard.

# Cleanup

If you want to clear out all the data, run **./shutdown.sh** from a terminal window.  This script will erase all the data and stop all the docker containers.
