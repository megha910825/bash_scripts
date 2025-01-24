#!/bin/bash



PS3="Select the operation: "



select opt in search install remove quit; do

  case $opt in

    search)

      echo "You have selected the $opt"

      echo -n "Enter the package name: "

      read package_name

      echo "Searching for package : $package_name"

      yum search $package_name

      break

      ;;

    install)

      echo "You have selected the $opt"

      echo -n "Enter the package name: "

      read package_name

      echo "Installing the package : $package_name"

      yum -y install $package_name

      break

      ;;

    remove)

      echo "You have selected the $opt"

      echo -n "Enter the package name: "

      read package_name

      echo "Remove package : $package_name"

      yum -y remove $package_name

      break

      ;;

    quit)

      break

      ;;

    *)

      echo "Invalid option $REPLY"

      ;;

  esac

done
