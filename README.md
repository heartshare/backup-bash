Backups
=======

Open Source backup solution (yep, another one). Mainly wrapper for rdiff-backup. Public domain license.

Something similar is already on my public repos: https://github.com/ReekenX/backup-py

This is improved version to keep **track structured backups**.

Structured backups
==================

I don't want to spend time searching where I have placed backups (so and you!). Having few entries in crontab, like::

    5    6      *    *   *     bash backup_mysql.sh backups@example.org example.org:mysql mysql-password
    11   6      *    *   *     bash backup_path.sh backups@example.org::/etc/ example.org:etc
    15   6      *    *   *     bash backup_path.sh backups@example.org::/var/www/ example.org:www
    50   6      *    *   *     bash backup_path.sh backups@example.org::/var/spool/ example.org:mail
    15   7      *    *   *     bash backup_path.sh backups@example.org::/home/ example.org:home


makes my backup folder with nice structure, like::

    $ tree /var/backups
    |-- example.org:etc
    |   `-- 2014-03
    |   `-- 2014-02
    |   `-- 2014-01
    |-- example.org:home
    |   `-- 2014-03
    |   `-- 2014-02
    |   `-- 2014-01
    |-- example.org:mail
    |   `-- 2014-03
    |   `-- 2014-02
    |   `-- 2014-01
    |-- example.org:mysql
    |   `-- 2014-03
    |   `-- 2014-02
    |   `-- 2014-01
    |-- example.org:www
    |   `-- 2014-03
    |   `-- 2014-02
    |   `-- 2014-01
    `-- logs
        |-- 2014-03-19.log
        |-- 2014-03-20.log
        |-- [..]
        `-- list.log

Features
========

Full backup every month.

MySQL database and directories backup.

Daily backups (depends on your needs).

MySQL database backups splitted to each database.

Logging - so you always know situation.

Bugs
====

You can always file a bug or request to my Github issues tracker.
