## Assumption and explanation:
- the app doesn't need login/auth feature as its not mentioned in user story
- the DB's table structure separates the main info of the participant data with its answer and perspective calculation  
- there is BE's endpoint to see the test result, `http://127.0.0.1:8000/index.php?r=api/participant/perspective&email=[participant's-email-address]`
- currently no validation if user have done the MTBI test before, which is can be identified by the email. Therefore, we allow user to input multiple times. However, when showing the test result, it will always the latest result.


## Backend's next improvement:
- now I create table in the DB by importing excel into mysql using Xampp tool. Ideally the BE should have migration script to setup the DB, the migration script can be defined as future improvement.
- I use php-apache with default setup to run as the BE server because its the fastest way. For the optimum performance, the web server should use nginx  instead of using apache
- In the future, the web server should be configured to support clean url- 
- currently the BE still contains the built-in page and routes. In the future, it should be removed to make the code cleaner
- create more unit test to ensure the QA
- setup prettier and linter that runs when user is commiting code to GIT in order to prettify the code and check for code smell
- setup swagger, so FE can automatically create the data models based on swagger's definition

## Frontend's next improvement:
- create unit test to ensure the QA
- setup prettier and linter that runs when user is commiting code to GIT in order to prettify the code and check for code smell
- currently the FE still contains the built-in page and routes. In the future, it should be removed to make the code cleaner
- store some user data in browser's local-storage so the app can identify early if user recently just took a test
- validate and define actions if user have done the MTBI test before, this is identified by the email
- generate Models and FormGroups automatically from swagger's definition


