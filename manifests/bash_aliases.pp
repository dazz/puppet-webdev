class webdev::bash_aliases {

    exec {"download_bash_aliases":
      command => "git clone git://github.com/dazz/dazs-bash_aliases.git /home/vagrant/dazs-bash_aliases/",
      creates => "/home/vagrant/dazs-bash_aliases/.bash_aliases",
    }

    file { "/home/vagrant/.bash_aliases":
      ensure => link,
      target => "/home/vagrant/dazs-bash_aliases/.bash_aliases",
      require => Exec["download_bash_aliases"]
    }
}