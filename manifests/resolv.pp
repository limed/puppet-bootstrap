
class bootstrap::resolv {

    file { "/etc/resolv.conf":
        owner   => root,
        group   => root,
        mode    => 644,
        path    => "/etc/resolv.conf",
        content => template("bootstrap/resolv.conf.erb")
    }
}
