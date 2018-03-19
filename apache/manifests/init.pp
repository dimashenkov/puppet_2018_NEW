class apache (
        $package_name = $apache::params::package_name,
        $service_name = $apache::params::service_name,
        $conf_dir     = $apache::params::conf_dir,
        $vhost_dir    = $apache::params::vhost_dir,
        $document_root = $apache::params::document_root,
        $servername  = $apache::params::servername,
        $log_dir      = $apache::params::log_dir,
        $doc_dir_name = $apache::params::doc_dir_name,
        $vh_server_name = $apache::params::vh_server_name,
        )
        inherits apache::params #You can only override parameters with inheritance
        {
include apache::package
include apache::service



file { $log_dir:
        ensure => directory,
        recurse => true,
}
apache::vhost { "default": 
        port => 80,
        document_root => $document_root,
        vhost_dir    => $vhost_dir,
        servername  => $servername,
        log_dir => $log_dir,
}        
apache::vhost { "dshenkovB":
        port => 80,
        document_root => "${document_root}/mitkob",
        vhost_dir    => $vhost_dir,
        servername  => "dshenkov6b.mylabserver.com",
        log_dir => $log_dir,
                                        }


apache::vhost { "dshenkovC":
        port => 80,
        document_root => "${document_root}/mitkoc",
        vhost_dir    => $vhost_dir,
        servername  => "dshenkov6c.mylabserver.com",
        log_dir => $log_dir,
                                                                                }


apache::vhost { "dshenkov_hiera":
        port => 80,
        document_root => "${document_root}/${hiera('doc_dir_name')}",
        vhost_dir    => $vhost_dir,
        servername  => hiera('vh_server_name'),
        log_dir => $log_dir,
                                                                                                                        }

}
