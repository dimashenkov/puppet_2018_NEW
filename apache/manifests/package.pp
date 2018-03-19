class apache::package ($package_name = $apache::params::package_name)
{
        package { 'apache':
                name => "${package_name}",
#                 name => apache2,
                ensure => present,
# mv za da ba4ka   /etc/apache2/sites-enabled/000-default.conf  /etc/apache2/sites-enabled/000-default.conf_ORIG
}

}
