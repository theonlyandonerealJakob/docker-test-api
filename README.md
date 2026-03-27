# docker-test-api
a simple test to get a better understanding for docker

* run your container with "sudo docker run -p 8080:8000 api-test"
** you will see the following message box
   FastAPI   Starting production server 🚀

             Searching for package file structure from directories with     
             __init__.py files                                              
             Importing from /testprojekt/LF8_videothek

    module   🐍 main.py

      code   Importing the FastAPI app object from the module with the following
             code:                                                          

             from main import app

       app   Using import string: main:app

    server   Server started at http://0.0.0.0:8000
    server   Documentation at http://0.0.0.0:8000/docs

             Logs:

      INFO   Started server process [1]
      INFO   Waiting for application startup.
      INFO   Application startup complete.
      INFO   Uvicorn running on http://0.0.0.0:8000 (Press CTRL+C to quit

* once your container runs try to connect to it from your main system by "https://127.0.0.1:8080/docs"
