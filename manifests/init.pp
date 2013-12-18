# Definition: authbind
#
# This class installs authbind on a debian box and lets 
# users bind to priviledged ports
#
# Authors:
#   Mike Wilson -mw@ceh.ac.uk
#   Christopher Johnson - cjohn@ceh.ac.uk
#
class authbind {
    package {'authbind':
        ensure => present,
    }

    file {["/etc/authbind", "/etc/authbind/byport"]:
        ensure => directory,
    }
}