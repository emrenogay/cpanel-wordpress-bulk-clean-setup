# At your own risk! 
# Cannot be used for any illegal purpose!

* * *

How to use?
-----------
Upload updated and clean WordPress files to /root/wordpress directory. For example;\
\
Enter the /root directory and download WordPress latest version at this step\
`cd /root && wget https://wordpress.org/latest.zip && unzip latest.zip`

Download script and do executable\
`wget https://raw.githubusercontent.com/emrenogay/cpanel-wordpress-bulk-clean-setup/main/copy.sh`
\
`chmod +x copy.sh`
\
\
Edit copy.sh file for your domains\
`nano copy.sh`\
\
You need to change DOMAINS var with your domains. Like that;\
`DOMAINS=("domain1.com" "domain2.com" "domain3.com")`

# How to use - Full steps
`cd /root && wget https://wordpress.org/latest.zip && unzip latest.zip`
\
`wget https://raw.githubusercontent.com/emrenogay/cpanel-wordpress-bulk-clean-setup/main/copy.sh`
\
`nano copy.sh`
\
`./copy.sh`

Why did I create this script?
-----------------------------

Approximately 900 websites of a customer of mine who uses WHM / cPanel were infected with the same virus.

I wrote this script to clean this virus, which replicates itself in WordPress files, from core WordPress files.
This script does not modify or delete wp-config.php and wp-content.
