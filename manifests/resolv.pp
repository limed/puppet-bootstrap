
class bootstrap::resolv {

    # Total cop out
    $search_domain  = ["nws.oregonstate.edu", "nws.orst.edu", "orst.edu", "oregonstate.edu"]
    $dns_servers    = ["128.193.0.10", "128.193.4.20"]

    file { "/etc/resolv.conf":
        owner   => root,
        group   => root,
        mode    => 644,
        path    => "/etc/resolv.conf",
        content => template("bootstrap/resolv.conf.erb")
    }
}
