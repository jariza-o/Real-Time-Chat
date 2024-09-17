FROM python

# ADD ENV TO THE CONTAINER (NOT IS NECESARY BUT IS BEST)
COPY conf/requirements.txt /requirements.txt

RUN apt-get update

RUN pip install -r /requirements.txt

CMD ["python", "/mywebsite/manage.py", "runserver", "0.0.0.0:8000"]