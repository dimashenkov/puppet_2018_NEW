class hierademo  {

                #$domainname_ar = hiera_array('domain_name')
                #$domain_name = hiera('domain_name')
                #notify {"HIERA_AR_domain name is : ${domainname_ar}":}
                #notify {"HIERA_domain name is : ${domainname}":}
                notify {"domain name is : ${domain_name}":}
                #notify {"api key value is : ${api_key}":}



}
