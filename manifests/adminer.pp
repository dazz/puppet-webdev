class webdev::adminer {

    exec{"download_adminer"
        command => "wget http://www.adminer.org/latest-mysql-en.php -o adminer.php"
    }

}