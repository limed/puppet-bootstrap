
class bootstrap::resolv {
    define resolv_conf($domain, $nameserver) {
        owner   => root,
        group   => root,
        mode    => 644,
        path    => "/etc/resolv.conf",
        content => template("templates/etc/resolv.conf.erb")
    }
}
