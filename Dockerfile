FROM python:3.8
WORKDIR /coorseo-api/
COPY application/requirements.txt application/
RUN pip3.8 install -r application/requirements.txt

COPY . .

ENV FLASK_APP = application
ENV FLASK_ENV = development
ENV FLASK_DEBUG = 1
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_RUN_PORT=5000

RUN ls -lha
ENTRYPOINT ["python3.8"]
CMD ["run.py"]


#RUN mkdir /coorseo
#WORKDIR /coorseo
#COPY application/requirements.txt /coorseo/application/
#RUN pip install -r application/requirements.txt
#COPY . /coorseo/
#
#WORKDIR /
#ENV FLASK_APP = coorseo
#ENV FLASK_ENV = development
#ENV FLASK_DEBUG = 1
#ENV FLASK_RUN_HOST=0.0.0.0
#ENV FLASK_RUN_PORT=5000
#
#EXPOSE 5000
#
#ENTRYPOINT ["python", "-m", "flask"]
#CMD ["run"]