#!/usr/bin/env bash
echo "  Hello, How are you ?"
echo "  So to create a snapshot of your vm instance;"
echo "  Give me the name of your instance;"
read inst
echo "  Give me the name of your zone in which your instance is !!;"
echo zone
cd 
gcloud compute disks snapshot $inst --snapshot-names s1 --zone $zone
echo "   Now, lets create an image from the snapshot;"
gcloud compute images create image1 --source-snapshot s1
cd
echo "   Made by Samyak Jain !!;"
echo "   Thankyou for using !!;"
