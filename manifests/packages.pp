
class bootstrap::packages {

    package  {
        "htop":         ensure => installed;
        "ssh":          ensure => installed;
        "lsof":         ensure => installed;
        "less":         ensure => installed;
        "sysstat":      ensure => installed;
        "lsb-release":  ensure => installed;
    }

    package {
        "exim4":                ensure => absent;
        "exim4-base":           ensure => absent;
        "lpr":                  ensure => absent;
        "portmap":              ensure => absent;
        "nfs-common":           ensure => absent;
        "nfs-kernel-server":    ensure => absent;
    }

}
