
find . -iname .DS_Store -exec rm {} \;
rsync -ar --delete --progress static/ root@benalu.dev:/var/www/html 

