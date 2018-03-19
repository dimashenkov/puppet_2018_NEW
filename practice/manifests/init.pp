class practice {
        host { 'webserver01':
                name => 'dshenkov01.mylabserver.com',
                ip => '10.1.1.1',
                host_aliases => ['web01' , 'wbh01'], 
                comment => 'this is our webserver',
        
        
        }

        host { 'webserver09':
                name => 'dshenkov09.mylabserver.com',
                ip => '10.1.1.9',
                host_aliases => ['web09' , 'wbh09'],
                comment => '',


                                                                                }

        host { 'centos64c':
        ip => '10.20.1.75',
        }




}
