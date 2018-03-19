class base::ssh  {




        package { 'openssh':
		name => 'openssh-server',
                ensure => present,

}
        file {'/etc/ssh/sshd_config':
                ensure => file,
                owner => 'root',
                group => 'root',
                require =>  Package['openssh'],
		source => 'puppet:///modules/base/sshd_config',

}
        
        service { 'ssh-service':
		name => $base::ssh_params::ssh_name,
                
                ensure => running,
		enable => true,
		subscribe => File['/etc/ssh/sshd_config'],}

}

