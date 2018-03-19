class practice::file {
        file { 'motd':
                path => '/etc/motd',
                content => 'ZDRASTI pi4',
                }
        file {'Motd':
                path => '/etc/motd.tail',
                content => 'ZDRASTI pi42',
        
        
        }



}
