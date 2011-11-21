
class puppet {

    require bootstrap::params

    package { "puppet":
        name    => "${bootstrap::params::packagename_puppet}",
        ensure  => present,
    }

    service { "puppet":
        ensure      => running,
        name        => "puppet",
        enable      => true,
        hasrestart  => true,
        hasstatus   => true,
        require     => Package["puppet"],
    }

    file { "puppet.conf":
        ensure  => present,
        path    => "/etc/puppet/puppet.conf",
        owner   => root,
        group   => root,
        mode    => '0644',
        require => Package["puppet"],
        content => template("bootstrap/puppet.conf.erb"),
        notify  => Service["puppet"],
    }

}
