Puppet bootstrap for new debian servers at NET
-----------------------------------------------
This will mainly be used to bootstrap a server to a point where its sane to use

Usage
-----
* For testing
> puppet apply --noop --verbose --modulepath=/root/bootstrap/tests/init.pp

* To run
> puppet apply --verbose --modulepath=/root -e "include bootstrap"

