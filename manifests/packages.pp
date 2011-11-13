
class bootstrap::packages {

    package  {
        "htop":         ensure => installed;
        "ssh":          ensure => installed;
        "lsof":         ensure => installed;
        "less":         ensure => installed;
        "sysstat":      ensure => installed;
        "lsb-release":  ensure => installed;
    }

}
