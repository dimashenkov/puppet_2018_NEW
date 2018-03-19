class base::motd  {
#        $author= 'MITKO3'
        $author = $base::ssh_params::author1
        file { '/etc/motd':
        ensure => file,
        owner => "root",
        content => template('base/motd.erb') 
        #put po podrazbirane.propuska tamplates dir
        
        }


}
