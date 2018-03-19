class fun ( $con , $con2){
  file { 'motd':
   path => '/etc/motd',
   ensure => 'file',                                  #изчрично има path/таргет
  content => $con,}
 file {'/etc/con_test':                           #товае пътя и името       
  ensure => 'file',
  content => $con2,}
  }
