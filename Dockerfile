FROM python:3.9

WORKDIR /app/backend

COPY requirements.txt /app/backend
# Install app dependencies
RUN pip install -r requirements.txt

COPY . /app/backend

EXPOSE 8000
CMD python /app/backed/manage.py runserver 0.0.0.0:8000
#RUN python manage.py makemigrations
