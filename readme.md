# MBTI

Run the MBTI stacks using docker

## Step to runs fullstack app
- download or clone the current repo
- run `git submodule update --init --recursive` to pull the submodules from repository.
- if this is the first time you run the app, please run `docker-compose run --rm php composer install` to install Backend's dependency using composer. 
- open the file `mbti-ui\src\environments\environment.ts`, and make sure the `environment.api` variable points to the correct ip address. If you use different IP/domain for docker, then please replace `127.0.0.1` to your address. No need to change if you use the default docker configuration.
- run `docker-compose up -d` to run the docker instance.
- open url [http://127.0.0.1:4201/](http://127.0.0.1:4201/) to open the UI, or replace the IP with your address/domain. 
- Sometimes, when you run the app for the second time, the UI won't start. Solution: just run `docker-compose build` after you run `docker-compose up -d` in order to trigger the UI to start.
- run `docker-compose down` to stop the docker.


## Run unit test on MBTI calculation
- Currently, there is only one unit test that only calculates the MBTI result.
- The file is located in `mbti-api\tests/unit/models/ParticipantTest.php`
- to execute, run `docker-compose run --rm php /app/vendor/bin/codecept run tests/unit/models/ParticipantTest.php`. 


## Requirement Assumption and Future Improvement
[Assumption and Future Improvement](next-improvement.md)