class ntp::params {
       case $::operatingsystem {
                'ubuntu': {
                $template = 'ubuntu_ntp.conf' 
                $service_name = 'ntp'
                $default_servers =[ " 0.ubuntu.pool.ntp.org iburst",
                                    " 1.ubuntu.pool.ntp.org iburst",
                                   " 3.ubuntu.pool.ntp.org iburst",
                                " 4.ubuntu.pool.ntp.org iburst",]
}
                'centos': {
                $template = 'centos_ntp.conf' 
                $service_name = 'ntpd'
                $default_servers =[ " 0.centos.pool.ntp.org iburst",
                                   " 1.centos.pool.ntp.org iburst",
                                    " 3.centos.pool.ntp.org iburst",
                                    " 4.centos.pool.ntp.org iburst",] #aray za obhojdane w templati-te.erb
}
                default: {fail ("OS $::operatingsystem NOT supported")}
                                                                }
                $package_name = "ntp"
}
