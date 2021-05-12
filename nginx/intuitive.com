server {
  listen 443 ssl;
  listen [::]:443 ssl;
  server_name dev.intuitive.com;
  ssl_certificate /Users/gregkonush/Github/intuitive/nginx/intuitive.cert;
  ssl_certificate_key /Users/gregkonush/Github/intuitive/nginx/intuitive.key;

  location / {
    proxy_pass http://localhost:3000;
  }
}
