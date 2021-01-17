# MBTI

Run the MBTI stacks using docker

## Step to runs fullstack app
- download or clone the current repo
- run `git submodule update --init --recursive` to pull the submodules from repository.
- if this is the first time you run the app, please run `docker-compose run --rm php composer install` to install Backend's dependency using composer. 
- open the file `mbti-ui\src\environments\environment.ts`, and make sure the `environment.api` variable points to the correct ip address. If you use different ip/domain for docker, then please replace `127.0.0.1` to your address. No need to change if you use default docker configuration.
- run `docker-compose up -d` to run the run the docker instance. The `--build` param is to make sure the UI is being started.
- open url `http://127.0.0.1:4201/` to open the UI. Sometimes, for the second time running the app, the UI won't start, just run `docker-compose build` to trigger the UI to start.
- run `docker-compose up -d` to run the run the docker instance. The `--build` param is to make sure the UI is being started.
- run `docker-compose down` to stop the docker.

## Run unit test on MBTI calculation
- Currently, there is only one test that only calculates the MBTI result.
- The file is located in `mbti-api\tests/unit/models/ParticipantTest.php`
- to execute, run `docker-compose run --rm php /app/vendor/bin/codecept run tests/unit/models/ParticipantTest.php`. 
