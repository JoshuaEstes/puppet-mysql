####
#
#
#
class mysql::client
{

    package { 'mysql-client':
        ensure => present,
        name   => 'mysql-client',
    }

}
