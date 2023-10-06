FROM nginx
LABEL io.openshift.wants mongo
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/default.conf