# Authbind

## Overview

This is the authbind module, it allows non-privileged users on debian boxes to bind to ports below 1024

## Module Description

This module will install and manage the [authbind](http://manpages.ubuntu.com/manpages/hardy/man1/authbind.1.html)

## Setup

### What Authbind affects

* Installs the authbind package
* Manages the /etc/authbind directory

## Usage

You can enable a specific user to bind to a particluar port by:

	authbind::byport { '80': 
		uid => 'mrUser'
	}

That is all there is to it :)

## Limitations

Authbind only affects debian and only works on ipv4. This module has been tested on ubuntu 12.04 lts

## Contributors

Mike Wilson - mw@ceh.ac.uk
Christopher Johnson - cjohn@ceh.ac.uk