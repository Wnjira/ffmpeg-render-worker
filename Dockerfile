FROM ubuntu:20.04

RUN apt-get update && \ 
    apt-get install -y ffmpeg curl && \ 
    apt-get clean

WORKDIR /app
COPY main.sh /app/
RUN chmod +x main.sh

CMD ["./main.sh"]
