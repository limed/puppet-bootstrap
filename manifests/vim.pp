
class bootstrap::vim {

    require bootstrap::params
    $vimdir = "${bootstrap::params::files}/root"

    package { "vim":
        ensure  => installed;
    }

    file { "/root/.vimrc":
        require => Package["vim"],
        mode    => 644,
        source  => "${vimdir}/dot.vimrc"
    }

}
