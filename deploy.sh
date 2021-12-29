
npm run build
find . -iname .DS_Store -exec rm {} \;
rsync -ar --delete --progress public/ root@benalu.dev:/var/www/html 

