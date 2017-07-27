# Exploit Checker

This is a simpler and limited version of the one we currently run here
at PrivateInternetAccess.

## Features

-   run periodically by cron
-   notify if new CVE for a particular product has been published to
    vulnerability database
-   send email to a particular email address
-   use vulnerability database http://www.cvedetails.com/
-   support multiple products: OpenSSL, OpenVPN, OpenSSH
-   written in ruby

On each execution:

-   load previous vulnerabilities from storage
-   check vulnerability database for new vulnerabilities
-   send single message with all new vulnerabilities found
-   update storage of last vulnerabilities found
-   doesn't notify if no new vulnerabilities found

## Assumptions

-   the storage is already created
-   storage has already been run in the past

## Delivery

-   send to takehome@londontrustmedia.com
-   packaged in zip file
-   include repo
-   include setup instructions
