#!/usr/bin/env bash

core_site_template=/app/pio-engine/PredictionIO-dist/conf/core-site.xml.erb
if [ -f "$core_site_template" ]
then
  erb $core_site_template > /app/pio-engine/PredictionIO-dist/conf/core-site.xml
fi

nginx_conf_template=/app/space-proxy/nginx/conf/nginx.conf.erb
if [ -f "$nginx_conf_template" ]
then
  erb $nginx_conf_template > /app/space-proxy/nginx/conf/nginx.conf
fi

nginx_auth_template=/app/space-proxy/nginx/conf/htpasswd.erb
if [ -f "$nginx_auth_template" ]
then
  erb $nginx_auth_template > /app/space-proxy/nginx/conf/htpasswd
fi
