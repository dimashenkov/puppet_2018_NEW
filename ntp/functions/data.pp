# ntp/functions/data.pp
function ntp::data() {
  $base_params = {
    'ntp::autoupdate'   => false,
    'ntp::service_name' => 'ntpd',
            }

     $os_params = case $facts['os']['family'] {
        'AIX': {
           { 'ntp::service_name' => 'xntpd' }
                            }
        'Debian': {
           { 'ntp::service_name' => 'ntp' }
                                          }
                default: {
                                                    {}
                                                        }
                                                          }

                                                            # Merge the hashes and return a single hash.
        $base_params + $os_params
                                                              }
