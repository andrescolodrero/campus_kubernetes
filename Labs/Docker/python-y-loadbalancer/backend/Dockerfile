FROM python:3.12-bullseye

WORKDIR /app

COPY readme.txt readme.txt
RUN pip3 install -r readme.txt

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]