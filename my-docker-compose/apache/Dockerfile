FROM httpd:2.4

COPY apache.vhost.conf /usr/local/apache2/conf/extra/apache.vhost.conf

# COPY restaurant-css-framework  /var/www/restaurant-css-framework/

RUN apt update && apt install -y git

RUN git clone https://github.com/frances-joffany-navarro/restaurant-css-framework.git /var/www/restaurant-css-framework/
RUN sed -i \
	-e '/#LoadModule deflate_module/s/^#//g' \
	-e '/#LoadModule proxy_module/s/^#//g' \
	-e '/#LoadModule proxy_fcgi_module/s/^#//g' \
	/usr/local/apache2/conf/httpd.conf

RUN echo "Include /usr/local/apache2/conf/extra/apache.vhost.conf" >> /usr/local/apache2/conf/httpd.conf
