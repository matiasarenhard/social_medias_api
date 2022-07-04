# social_medias_api

<b>Stack</b>:
``` 
  Ruby: 2.7.5
  Rails: 6.1.4
  Docker
  Docker-compose
  Postgresql
```

<b>Build Instructions</b>: <br>
1 - Check if exists <b>.env</b> file. If not exists, create and copy value of <b>env_sample.txt</b> <br>
2 - Needs to install in your machine <b>Docker</b> and <b>docker-compose</b> to build <br> app. i'm use *Docker version 20.10.17* and *docker-compose version 1.28.4* <br>
3 - Commands to build on Ubuntu 20.04

```
  sudo docker-compose build
  sudo docker-compose run web rake db:create db:migrate
  sudo docker-compose run web rake db:test:create db:test:migrate
  sudo docker-compose run web rake db:test:prepare
  sudo docker-compose up
```
4 - On other terminal tab, run:

```
  curl localhost:3000
```
if all working, this will be response: 
![image](https://user-images.githubusercontent.com/14844393/177075922-7a77bd88-565f-4911-a871-153a350499f5.png)

if happens problems will return random error message
![image](https://user-images.githubusercontent.com/14844393/177076718-b9331369-6f05-4950-968e-097530cf2db4.png)

5 - For run tests
```
  sudo docker-compose run web bundle exec rspec
```





