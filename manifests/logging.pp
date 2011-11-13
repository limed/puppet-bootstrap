
class bootstrap::syslog {

    package { "rsyslogd":
        ensure  => installed
    }

    file { "/etc/rsyslog.conf":
        ensure  => present,
        content => template("puppet-bootstrap/rsyslog.erb")
    }

}
