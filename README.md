# Custom docker image for rPi python django 

Docker image with [Django](https://www.djangoproject.com/) 


#build

install git :

sudo apt-get install git

Build with docker :

sudo docker build -t lijah/djangoedc github.com/rmesnard/django-edc


#install

create volume :

sudo docker volume create django_config

#run

sudo docker run -d --name="django" -p 80:5005 -v django_config:/usr/share/config lijah/djangoedc


#console

sudo docker exec -it mytank bash
