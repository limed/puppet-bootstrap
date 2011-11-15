
class bootstrap::logging {

    require bootstrap::params
    $loghost = "${bootstrap::params::loghost}"

    package { "rsyslogd":
        ensure  => installed
    }

    file { "/etc/rsyslog.conf":
        ensure  => present,
        content => template("bootstrap/rsyslog.conf.erb")
    }

}
