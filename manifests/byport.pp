# == Define: authbind::byport
#
# This defined type enables a user to authbind to a privileged port
#
# === Parameters
#
# [*uid*] The $uid of the user who is to bind to the given $port
# [*port*] The $port to bind to, defaults to $title
#
# === Examples
#
# Let tomcat bind to port 80
#    authbind::byport { '80':
#        uid => 'tomcat'
#    }
#
# === Authors
# - Mike Wilson <mw@ceh.ac.uk>
# - Christopher Johnson <cjohn@ceh.ac.uk>
#
define authbind::byport (
    $uid,
    $port = $title
) {
    require authbind

    file {"/etc/authbind/byport/${port}":
        ensure     => file,
        require    => Package['authbind'],
        mode       => '755',
        owner      => $uid,
    }
}
