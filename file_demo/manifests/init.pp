class file_demo {
        File {
#My defaults for types down starts with UP case File remember!
                owner => 'root',
                group => 'finance',
                mode  => '0660',   #0 v na4aloto e za special permission bit
        }
        
	file{ '/root/motd':
		ensure => present,
		source => 'puppet:///modules/file_demo/motd',
		owner => root,
		group => root,

}
	file{ '/etc/motd':
		ensure => link,
		target => '/root/motd',
		

}
#Primer za promenlivi variables
        $homedir = "/root"
        $content = "NE6TOSI content"
        file {"${homedir}/myfile.txt":
                content => $content,
        
        }
}
