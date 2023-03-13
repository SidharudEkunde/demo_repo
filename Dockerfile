FROM python:3.8
ENV PYTHONUNBUFFERED 1
RUN pip3 install django==3.2
COPY . .
RUN cd backend/
RUN ls
RUN pwd

RUN python3 manage.py migrate
EXPOSE 8000
CMD ["python3","manage.py","runserver","0.0.0.0:8000"]
