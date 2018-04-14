#!/bin/bash

clear
echo "Hi $USER, This script will suck the soul out of your PC and will add it to the list of dementors in the world."

echo "Do you wish to demntorify your PC?"
select yn in "Yes" "No"; do
	case $yn in
		Yes ) break;;
		No ) exit;;
	esac
done

echo "Sax"
