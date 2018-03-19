class profiles::base {
#       include ssh
        include base::ssh_params
        include base::ssh
        include base::variables
        include local_users
        include local_users::groups::finance
        include local_users::groups::wheel
        class {'ntp': package => 'ntp', } 


}
