class authbind {
    package {'authbind':
    	ensure     => present,
    }

    file {["/etc/authbind", "/etc/authbind/byport"]:
    	ensure     => directory,
    }
}