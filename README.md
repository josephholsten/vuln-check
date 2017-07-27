Hi Joseph,

Thanks for the chat earlier today, sorry for the delay forwarding you the
take-home. See below for details.

--

As a DevOps engineer at PrivateInternetAccess, one particular skill you'll
need is being crafty and thinking creatively about how to solve problems.
One of the problems we have, being so security and privacy focused, is
ensuring we're up to date on all the security issues on technologies in our
infrastructure.

For this challenge, we'd like you to write a sample "Exploit Checker", a
simpler and limited version of the one we currently run here at
PrivateInternetAccess. This should be a script that would be run
periodically on say, a cronjob, and that would let us know whether a new
CVE for a particular library or framework has been published on a
vulnerability database.

Our real exploit checker uses multiple databases. For this problem, the
vulnerability database you'll use is http://www.cvedetails.com/.

You'll possibly have to spend some time browsing around the website to find
what's the best way to get the information you need. You will, for
instance, notice that the big search bar on the home page doesn't really
work and that you will have to use the search on the left sidebar! This is
expected and part of the challenge.

After you spend some time poking around the website and find out what kind
of information you need to store, you can go ahead and write a script. The
script, when run, should:

- Find out what was the last vulnerability it found last time it was run
- Check the website for any new vulnerabilities since the last check
- Send an email to a particular email address with all the new
vulnerabilities found. All the vulnerabilities should be sent in the same
email
- Update it's storage of the last vulnerability found so that it doesn't
email us again until a new vulnerability is published

Ideally the script would support multiple products. Your first version
should handle at least one product though. We recommend you try "OpenSSL",
but some of the other vulnerabilities you can check for are "OpenVPN" and
"OpenSSH". Feel free to add any vendors you desire.

It's ok for your script to assume the storage it'll use is already created
and that it has already been run in the past.

We use ruby for our backend and ops automation, so we ask that you please
use ruby as well for your solution. Feel free to use any libraries you want=
.

We want to be respectful of your time, so your time limit is 2 hours from
the time when you start working on it. It's ok if you need a few extra
minutes to clean things up a bit. We know that amount of time is short and
this will also be an exercise on how to prioritize the features you're
working on.

Use git to track your progress through those 2 hours and, when you're
finished, send your solution to takehome@londontrustmedia.com in a zip file
with your repo and any eventual setup instructions.

You have 7 days from today to send in your solution but reach out if you
need an extension or have any questions.

Please keep in mind that we don=E2=80=99t offer detailed feedback at this s=
tage of
your process.

Best of luck!
Private Internet Access team

