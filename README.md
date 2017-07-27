# Exploit Checker

This is a simpler and limited version of the one currently run at
PrivateInternetAccess.

## The simplest thing that could possibly work

    bundle exec bin/vuln-check

The above will run `vuln-check` for all known products and initialize a
storage database. It will then print a message with all the "new"
vulnerabilities found. Further runs will only print newly found
vulnerabilities.

## Usage

For production use, this is meant to be run under cron (or another
scheduler which delivers messages when output is provided). To set up
cron to run every night at midnight, and notify `security@site.example`,
use a `crontab(5)` like the following:

    MAILTO=security@site.example
    0 0 * * * /usr/local/bin/vuln-check 2>&1

Additionally, production use should either ensure the ruby environment
has all dependant gems installed, or packaged into the application
artifact. Packaging dependencies is most easily done by using
`bundle package` as documented at:
http://bundler.io/v1.15/man/bundle-package.1.html. Alternatively, fpm is
an excellent way to install as a system package:
https://github.com/jordansissel/fpm

## Features

-   use vulnerability database http://www.cvedetails.com/
-   support multiple products: OpenSSL, OpenVPN, OpenSSH
-   written in ruby
-   run periodically by cron
-   notify if new CVE for a particular product has been published to
    vulnerability database
-   send email to a particular email address

On each execution:

-   load previous vulnerabilities from storage
-   check vulnerability database for new vulnerabilities
-   update storage of last vulnerabilities found
-   send single message with all new vulnerabilities found
-   doesn't notify if no new vulnerabilities found

## Delivery

-   send to takehome@londontrustmedia.com
-   packaged in zip file
-   include repo
-   include setup instructions
