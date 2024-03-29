
class bootstrap {

    require bootstrap::params
    include bootstrap::packages
    include bootstrap::vim
    include bootstrap::ntp
    include bootstrap::resolv

    file {
        "/root/.ssh":
            ensure  => directory;

        "/etc/motd.static":
            ensure  => file,
            source  => "${bootstrap::params::files}/etc/motd.static";

        "/etc/motd":
            ensure  => link,
            require => File["/etc/motd.static"],
            target  => "/etc/motd.static";
    }
}
