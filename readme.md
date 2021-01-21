# MBTI

This app is built using:
- Angular 10 for the frontend.
- Yii2 on PHP for the backend, it also already support ORM using Yii's [Active Record](https://www.yiiframework.com/doc/guide/2.0/en/db-active-record).
- MySQL for the database.
- The frontend and backend codes are submodules for the current repo.
- Frontend's repo is at [https://github.com/sulha199/mbti-ui](https://github.com/sulha199/mbti-ui)
- Backend's repo is at [https://github.com/sulha199/mbti-api](https://github.com/sulha199/mbti-api)

## Step to runs fullstack app
- download or clone the current repo
- run `git submodule update --init --recursive` to pull the submodules from repository.
- if this is the first time you run the app, please run `docker-compose run --rm php composer install` to install Backend's dependencies using composer. 
- open the file `mbti-ui\src\environments\environment.ts`, and make sure the `environment.api` variable points to the correct ip address. If you use different IP/domain for docker, then please replace `127.0.0.1` to your address. No need to change if you use the default docker configuration.
- run `docker-compose up -d` to run the docker instance.
- open url [http://127.0.0.1:4201/](http://127.0.0.1:4201/) to open the UI, or replace the IP with your address/domain. 
- Sometimes, when you run the app for the second time, the UI won't start. Solution: just run `docker-compose build` after you run `docker-compose up -d` in order to trigger the UI to start.
- run `docker-compose down` to stop the docker.


## Run unit test on MBTI calculation
- Currently, there is only one unit test that only calculates the MBTI result on the backend.
- The file is located in `mbti-api\tests/unit/models/ParticipantTest.php`
- make sure you have already installed the Backend's dependencies. Otherwise, just run `docker-compose run --rm php composer install` to install using composer.
- to execute, run `docker-compose run --rm php /app/vendor/bin/codecept run tests/unit/models/ParticipantTest.php`. 


## Requirement Assumption and Future Improvement
[Assumption and Future Improvement](next-improvement.md)
