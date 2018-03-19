$users = {
        'bob' => {
          home => '/home/bob',
        },
        'bob2' => {
           home => '/home/bob2',
}
}
$defaults = {
        ensure => present,
        gid => 'wheel',
        shell => '/bin/bash',
        managehome => true,
}
create_resources (user,$users,$defaults)
