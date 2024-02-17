FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN falasktemplate create-db
RUN falasktemplate populate-db
RUN falasktemplate add-user -u admin -p admin
EXPOSE 5000
CMD ["falasktemplate", "run"]
