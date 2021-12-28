
sudo apt install nginx certbot python3-certbot-nginx
echo '
server_name benalu.dev www.benalu.dev;
' | sudo tee /etc/nginx/sites-available/benalu.dev
sudo nginx -t
sudo systemctl reload nginx
sudo certbot --nginx -d benalu.dev -d www.benalu.dev
sudo systemctl enable certbot.timer
