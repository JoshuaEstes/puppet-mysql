####
#
#
#
class mysql::server
{

    include mysql::client

    package { 'mysql-server':
        ensure => present,
        name   => 'mysql-server',
        require => File['/etc/mysql/my.cnf'],
    }

    service { 'mysql':
        name    => 'mysql',
        ensure  => true,
        enable  => true,
        require => [
            Package['mysql-server'],
            File['/etc/mysql/my.cnf']
        ],
    }

    exec { 'set mysql root pw':
        command   => "mysqladmin -u root password 'root'",
        logoutput => true,
        unless    => "mysqladmin -u root -p'root' status > /dev/null",
        path      => '/usr/local/sbin:/usr/bin:/usr/local/bin',
        notify    => Service['mysql'],
        require   => Package['mysql-server'],
    }

    file { '/etc/mysql':
        ensure => directory,
        mode   => '0755',
    }

    file { '/etc/mysql/conf.d':
        ensure  => directory,
        mode    => '0755',
        recurse => false,
        purge   => false,
    }

    file { '/etc/mysql/my.cnf':
        content => template('mysql/my.cnf.erb'),
        mode    => '0644',
        notify  => Service['mysql'],
    }

}
