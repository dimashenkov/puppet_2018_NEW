class base {
        $dnsutil = $osfamily ? {
        'RedHat' => 'bind-utils',
        'Debian' => 'pdns-server',
        }
	package { ['tree',$dnsutil]:
		ensure => present,

}
	schedule { 'shc_daily':
                period => daily,
                range => '00:00 - 01:00',
        
        
        }
        
        $sys_update = $osfamily ? {
        'RedHat' => '/usr/bin/yum update -y',
        'Debian' => '/usr/bin/apt-get upgrade -y',
                        }
        exec {$sys_update: 
                schedule => 'shc_daily',
                }
}
