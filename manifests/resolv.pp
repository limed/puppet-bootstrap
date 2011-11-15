
class bootstrap::resolv {

    require bootstrap::params
    $dns_servers    = $bootstrap::params::dns_servers
    $search_domain  = $bootstrap::params::search_domain

    file { "/etc/resolv.conf":
        owner   => root,
        group   => root,
        mode    => 644,
        path    => "/etc/resolv.conf",
        content => template("bootstrap/resolv.conf.erb")
    }
}
