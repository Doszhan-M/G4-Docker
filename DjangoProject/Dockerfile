FROM python:3.9.5

# set work directory
WORKDIR /home/DjangoProject

RUN groupadd --gid 1000 django \
    && useradd --uid 1000 --gid django --shell /bin/bash --create-home django 

RUN chown -R django:django /etc
# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install dependencies
RUN pip install --upgrade pip
COPY ./Web/requirements.txt /home/DjangoProject/requirements.txt
RUN pip install -r requirements.txt

# copy project
COPY ./Web /home/DjangoProject/

# run entrypoint.sh
RUN ["chmod", "+x", "/home/DjangoProject/entrypoint_web.sh"]