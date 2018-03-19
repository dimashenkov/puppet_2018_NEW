class local_users{
	user {'admin':
		ensure => present,
		shell => '/bin/bash',
		home => '/home/admin',
		gid => 'wheel',
		managehome => true,
		password => '$6$sAYqvPUQ$MsB9SkuUCgzUbOdGH7eroA0eiAToGN1Lk66uUDSE4rymnf/zpPr2nGpBvRH2GSxQkdBG5boz9VmTtZBiYSH8F.',
}
	user { 'jeff':
		ensure => present,
		groups => ['wheel','finance'],
}
}
