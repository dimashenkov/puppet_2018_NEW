class var_test {
$osfamily = "test"
notify { 'test':
message => $osfamily,
}
notify { 'test':
message => $::osfamily,
}
}
