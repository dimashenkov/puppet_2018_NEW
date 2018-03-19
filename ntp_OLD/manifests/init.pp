class ntp ($package = $ntp::params::package_name )
        inherits ntp::params
#$package_name = "ntp" zima go ot params!!
        {
        package {'ntp':
                name => $package,
                ensure => present,


                                                        }
#include ntp::file  include_REDA IMA ZNA4ENIE!!!!!
                #include ntp::params
                include ntp::service
                include ntp::file
                #class {'ntp::file': template => 'hellow',}     #params demonstration

                } 
