# Apache Airflow Boiler Plate

This project has to came to origin to practice and understand airflow from scratch. Installing Apache airflow 
has many dependencies. Putting it inside a docker image and exposing the port would be an ideal development and 
production setup.

## step to initial setups
For someone who wants to know what are the thing that have to be done for setting up Apache Airflow from scratch

1. Install apache airflow
   > pip install apache-airflow
2. Set your current working directory as your AIRFLOW_HOME path.
3. On current working directory, airflow db has to be initialised 
   > airflow db init
   
   Initialising the db would bring airflow.cfg, airflow.db, and webserver_config.cfg
4. Run airflow webserver
   > airflow webserver
5. Once airflow webserver working has been carried out, stop the server. 
   Create a user by using the command given below and then restart the server login using the account created.



## Create a User

```commandline
# create an admin user
airflow users create \
    --username admin \
    --firstname Praveen \
    --lastname Kumar \
    --role Admin \
    --email praveenpkg8@gmail.com
```


### Problems Faced
1. webserver was unable to run. Increase the docker space to 3gb.


### Reference
https://towardsdatascience.com/getting-started-with-airflow-using-docker-cd8b44dbff98