#!/bin/bash
echo " upstream app {
#    server $testvar1$testvar2;
    server localhost:8080;
}

server {
    listen 80;
    location / {
        root /app/build;
        index index.html;
        try_files \$uri \$uri/ /index.html;
    }

    location /api {
        proxy_pass http://app;
    }
}
" > nginx.conf