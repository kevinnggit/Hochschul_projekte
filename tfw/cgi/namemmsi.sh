#!/usr/bin/env bash

   mariadb --defaults-file=/var/www/html/private/mariadb-defaults.cnf -s -e " drop table shipnamemmsi;"
   mariadb --defaults-file=/var/www/html/private/mariadb-defaults.cnf -s -e " drop table ship_positions;"
   mariadb --defaults-file=/var/www/html/private/mariadb-defaults.cnf -s -e " drop table id_datensatz;"
   mariadb --defaults-file=/var/www/html/private/mariadb-defaults.cnf -s -e "create table shipnamemmsi(id int auto_increment primary key, name varchar(256), mmsi long);"
   mariadb --defaults-file=/var/www/html/private/mariadb-defaults.cnf -s -e "create table ship_positions (id int auto_increment primary key, latitude double, longitude double);"
   mariadb --defaults-file=/var/www/html/private/mariadb-defaults.cnf -s -e "create table id_datensatz (id_d long);"

 while IFS="|" read a b c d e f g h i j k l m n o p q r s t u v; do
 if test "$b" -ne "5" && test "$b" -ne "24"; then
   mariadb --defaults-file=/var/www/html/private/mariadb-defaults.cnf -s -e "insert into shipnamemmsi (name, mmsi) values ('$f', '$c')";
   mariadb --defaults-file=/var/www/html/private/mariadb-defaults.cnf -s -e "insert into ship_positions (latitude, longitude) values ('$i', '$j')";
 fi
 done < /tmp/actual.log

 unique_id=$(date +%Y%m%d%H%M%S)
 mariadb --defaults-file=/var/www/html/private/mariadb-defaults.cnf -s -e "insert into id_datensatz values ('$unique_id')"
 echo "" > /tmp/actual.log#!/usr/bin/env bash

   mariadb --defaults-file=/var/www/html/private/mariadb-defaults.cnf -s -e " drop table shipnamemmsi;"
   mariadb --defaults-file=/var/www/html/private/mariadb-defaults.cnf -s -e " drop table ship_positions;"
   mariadb --defaults-file=/var/www/html/private/mariadb-defaults.cnf -s -e " drop table id_datensatz;"
   mariadb --defaults-file=/var/www/html/private/mariadb-defaults.cnf -s -e "create table shipnamemmsi(id int auto_increment primary key, name varchar(256), mmsi long);"
   mariadb --defaults-file=/var/www/html/private/mariadb-defaults.cnf -s -e "create table ship_positions (id int auto_increment primary key, latitude double, longitude double);"
   mariadb --defaults-file=/var/www/html/private/mariadb-defaults.cnf -s -e "create table id_datensatz (id_d long);"

 while IFS="|" read a b c d e f g h i j k l m n o p q r s t u v; do
 if test "$b" -ne "5" && test "$b" -ne "24"; then
   mariadb --defaults-file=/var/www/html/private/mariadb-defaults.cnf -s -e "insert into shipnamemmsi (name, mmsi) values ('$f', '$c')";
   mariadb --defaults-file=/var/www/html/private/mariadb-defaults.cnf -s -e "insert into ship_positions (latitude, longitude) values ('$i', '$j')";
 fi
 done < /tmp/actual.log

 unique_id=$(date +%Y%m%d%H%M%S)
 mariadb --defaults-file=/var/www/html/private/mariadb-defaults.cnf -s -e "insert into id_datensatz values ('$unique_id')"
 echo "" > /tmp/actual.log