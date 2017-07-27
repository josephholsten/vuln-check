# Exploit Checker

This is a simpler and limited version of the one currently run
at PrivateInternetAccess.

## The simplest thing that could possibly work

    bundle exec bin/vuln-check

The above will run `vuln-check` for all known products and initialize a
storage database. It will then print a message with all the "new"
vulnerabilities found. Further runs will only print newly found
vulnerabilities.

## Implemented Features

-   use vulnerability database http://www.cvedetails.com/
-   support multiple products: OpenSSL, OpenVPN, OpenSSH
-   written in ruby

On each execution:

-   check vulnerability database for new vulnerabilities

## To Be Implemented Features

-   run periodically by cron
-   notify if new CVE for a particular product has been published to
    vulnerability database
-   send email to a particular email address

On each execution:

-   load previous vulnerabilities from storage
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
