
class bootstrap {
    require bootstrap::param

    file {
        "/root/.ssh":
            ensure  => directory;

        "/root/.vim":
            require => Package["vim"],
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
