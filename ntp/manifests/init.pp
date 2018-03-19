# ntp/manifests/init.pp
class ntp (
  # default values are in ntp/functions/data.pp
    $autoupdate,
      $service_name,
      ) {
       notify {"---------${autoupdate}":}
        notify {"-------${service_name}":}
       }
