# nginx-exercise

command to run per exercise

open terminal in the project folder 

exercise 1:
  1:  docker build -t proxy .
  2:  docker run -d -p 80:80 --name proxy -v $(pwd):/usr/share/nginx/html proxy 
  3:  curl http://localhost
  
* to run the docker-compose you need to remove the container from exercise 1 before
1: docker ps
2: copy the container id (by image named proxy)
3: docker kill [container id]
4: docker rm [container id]

exercise 2+3+4:
  1:  docker-compose up -d --build 

* the script file writen in shellscript
exercise 5:
  sh deploy-with-healthcheck.sh

