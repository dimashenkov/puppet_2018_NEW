user {'test_user':
	ensure => present,
	uid => '102',
	gid => 'wheel',
	shell => '/bin/bash',
	home => '/home/test_user',
	managehome => true,


}
