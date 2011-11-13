
class bootstrap::ntp {

    require bootstrap::params
    $ntpserverlist = "${bootstrap::params::ntpserverlist}"

    package {
        "ntp":      ensure => installed;
        "ntpdate":  ensure => installed;
    }

    file {
        "/etc/ntp.conf":
            mode    => 644,
            content => template("bootstrap/ntp.conf.erb"),
            require => Package["ntp"],
    }

}
