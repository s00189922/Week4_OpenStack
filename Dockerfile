#Use nginx to serve the application##
FROM nginx:alpine

##Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

##Copy over the artifacts in dist folder to default nginx public folder
COPY /dist/hello-world /usr/share/nginx/html

##nginx will run in the foreground
CMD ["nginx","-g", "daemon off;"]