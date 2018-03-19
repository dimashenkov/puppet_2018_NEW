class base::ssh_params {
        case $osfamily {
        'RedHat' : { $ssh_name = 'sshd'}
        'Debian' : { $ssh_name = 'ssh'}
        default : { Warning ('NOT SUPPORTED OS')}
}
        $author1 = "MITKO1"

}

