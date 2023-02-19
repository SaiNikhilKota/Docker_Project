FROM ubuntu:latest

RUN mkdir home/data
RUN mkdir home/output
ADD IF.txt /home/data
ADD Limerick.txt /home/data
ADD app.py /home
RUN apt-get update
RUN apt-get install -y python3

CMD ["/home/app.py"]
ENTRYPOINT [ "python3" ]