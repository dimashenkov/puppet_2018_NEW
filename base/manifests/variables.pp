class base::variables {
        $topscope_var = 'tieban kapuTTTT'
        file { '/root/var_test.txt':
                content => $topscope_var,
                owner => 'root',
}
        notify { "${::operatingsystem} is OS":
        
        }

}
