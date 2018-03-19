$name_my = $::hostname
if ($name_my =~ /^dshenkov(\d+)/ )
     {notify {"TI SI NA HOST $0":} }
   else 
     {notify {"NA HOST ${name_my}":}}
                
