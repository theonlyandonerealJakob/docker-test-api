FROM debian

RUN apt update
RUN apt install -y git
RUN apt install -y mariadb-client
RUN apt install -y python3
RUN apt install -y python3-pip
RUN apt install -y python3-venv
RUN apt install -y python3-uvicorn
RUN apt install -y libmariadb-dev
RUN apt install -y build-essential

RUN git clone https://github.com/aileenkohlsdorf/LF8_project /testprojekt
WORKDIR /testprojekt
RUN python3 -m venv .venv
RUN .venv/bin/pip install nicegui
RUN .venv/bin/pip install pydantic
RUN .venv/bin/pip install dotenv
RUN .venv/bin/pip install mariadb
RUN .venv/bin/pip install fastapi_swagger_dark
RUN .venv/bin/pip install fastapi[standard]
RUN .venv/bin/pip install mariadb

CMD [".venv/bin/python", "-m", "fastapi", "run", "LF8_videothek/main.py"]
