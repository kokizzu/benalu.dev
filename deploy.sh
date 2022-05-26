
npm run build
find . -iname .DS_Store -exec rm {} \;
rsync -ar --progress public/ root@benalu.dev:/var/www/html 

