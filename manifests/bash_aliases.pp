class webdev::bash_aliases {

    exec {"download_bash_aliases":
        command => "git clone git://github.com/dazz/dazs-bash_aliases.git /home/vagrant/dazs-bash_aliases/"
    }

    exec {"copy_home":
        command => "cp /home/vagrant/dazs-bash_aliases/.bash_aliases /home/vagrant/.bash_aliases"
    }

    exec {"cleanup_folders":
        command => "rm -Rf /home/vagrant/dazs-bash_aliases"
    }

       Exec['download_bash_aliases']
    -> Exec['copy_home']
    -> Exec['cleanup_folders']
}