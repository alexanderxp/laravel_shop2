FROM nginx

ADD docker/conf/nginx.conf /etc/nginx/conf.d/default.conf

WORKDIR /home/alexander/Документы/GitHub/laravel_shop2