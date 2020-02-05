[![Codacy Badge](https://api.codacy.com/project/badge/Grade/d94d8d70ef3d4a329b4b562ddeb9b05d)](https://app.codacy.com/gh/dns-test/rpz.mypdns.cloud?utm_source=github.com&utm_medium=referral&utm_content=dns-test/rpz.mypdns.cloud&utm_campaign=Badge_Grade_Dashboard)
[![Build Status](https://travis-ci.com/dns-test/rpz.mypdns.cloud.svg?branch=master)](https://travis-ci.com/dns-test/rpz.mypdns.cloud)

# About this template
This goal with this template is to generate a hosts formatted file with the IP addresses 
pointing to `0.0.0.0` and store all test result in a Travis-CI stored (cache) MariaDB sql 
file.

The hosts file will at the end of procressing a PullRequest (PR) output all :code:`ACTIVE` 
from the test face with PyFunceble.

The tests that should be applied to any PullRequest is:

* `--idna` Ensure all punycoded domains are converted
* `--syntax` Varify submitted domains is valid
* `--dns` Using a CI installed local DNS recursor liek [dnsdist](https://dnsdist.org/)
* `--databse mariadb` To store PyFunceble test results to your next submission.
* `--hierarchical` keeping related domains collected around each other.

## Progress
Currently this is the first template which just has made it's import face from a 
working copy.

@spirillen is working on the `pull_request.sh` script on a local enviroment.

Once his script is ready for testing the procress will continue.

Have fun, and don't hasitate to contribute.
