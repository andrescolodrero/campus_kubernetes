FROM python:3.11.5-bullseye

WORKDIR /app

COPY readme.txt readme.txt
RUN pip3 install -r readme.txt

COPY . .
EXPOSE 5000
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]