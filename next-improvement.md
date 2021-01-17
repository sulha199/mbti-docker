## Assumption and explanation:
- The app doesn't need login/auth feature as its not mentioned in user story
- There is BE's endpoint to see the test result, `http://127.0.0.1:8000/index.php?r=api/participant/perspective&email=[participant's-email-address]`. When showing the test result, it will always show the latest result.
- The DB's table structure separates the main info of the participant data with its answer and perspective calculation. The structure allows one participant to have multiple perspective calculation result if the MBTI rules change in the future. 
- Currently no validation if user have done the MTBI test before, which should be able to be identified by the email. Therefore, we allow user to input multiple times.
- Currently, it only have one unit test that handle the test case based on the requirement.


## Backend's next improvement:
- I created table in the DB by importing excel into mysql using Xampp tool. Ideally the BE should have migration script to setup the DB, the migration script can be defined as future improvement.
- I use php-apache with default setup to run as the BE server because its the fastest way. For the optimum performance, the web server should use nginx  instead of using apache.
- In the future, the web server should be configured to support clean url- 
- Currently, the BE still contains the built-in page and routes. In the future, it should be removed to make the code cleaner.
- Need to create more unit test to ensure the QA in the future.
- Need to setup prettier and linter that runs everytime user is commiting code to GIT in order to prettify the code and check for code smell.
- setup swagger, so FE can automatically create the data models based on swagger's definition.
- More error handler, because currently only there is minimum error handler.

## Frontend's next improvement:
- Need to create more test to ensure the QA in the future.
- Need to setup prettier and linter that runs everytime user is commiting code to GIT in order to prettify the code and check for code smell.
- Currently, the FE still contains the built-in page and routes. In the future, it should be removed to make the code cleaner.
- For better user-experience, need to store some user data in browser's local-storage so the app can identify early if user recently just took a test and then offer some information.
- Need to setup script/plugins that generates Models and FormGroups automatically from swagger's definition.
- Currently no error handler, so it will need error handler so user get informed when they face an error.


