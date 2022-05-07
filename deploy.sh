#!/bin/bash


read -e -p 'Enter commit: ' -i "$message" message
echo " " 
echo "Sending changes to remote.." 
git add .
git commit -m "$message"
git push -u origin main
echo "  "
echo "Building site... "
hugo
echo " "
echo "Pushing public.. "
cd public
git add .
git commit -m "$message"
git push origin main
echo " "
echo "All Done ;) "
