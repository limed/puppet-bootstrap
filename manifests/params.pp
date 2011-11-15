
class bootstrap::params {

    $files          = "/etc/puppet/modules/bootstrap/files"
    $loghost        = "@loghost.nws.oregonstate.edu"
    $ntpserverlist  = "time.oregonstate.edu"
    $dns_servers    = ["128.193.4.20", "128.193.0.10"]
    $search_domain  = ["nws.orst.edu", "nws.oregonstate.edu", "orst.edu", "oregonstate.edu"]

}
