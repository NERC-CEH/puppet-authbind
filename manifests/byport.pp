# Definition: authbind::byport
#
# This defined type enables a user to authbind to a privileged port
#
# Authors:
#   Mike Wilson - mw@ceh.ac.uk
#   Christopher Johnson - cjohn@ceh.ac.uk
#
# Parameters:
# - The $port to bind to, defaults to $title
# - The $uid of the user who is to bind to the given $port
#
# Requires:
# - The authbind class
#
# Sample Usage :
#
#  #Let tomcat bind to port 80
#  authbind::byport { '80':
#    uid => 'tomcat'
#  }
#
define authbind::byport (
    $port = $title, 
    $uid
) {
    require authbind

    file {"/etc/authbind/byport/${port}":
        ensure     => file,
        require    => Package['authbind'],
        mode       => 755,
        owner      => $uid,
    }
}