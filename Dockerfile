FROM public.ecr.aws/lambda/python:3.8

RUN yum install -y git
RUN pip3 install aws-sam-cli

RUN mkdir /code
WORKDIR /code

COPY . ./

COPY docker-entrypoint.sh /bin/docker-entrypoint.sh
RUN chmod +x /bin/docker-entrypoint.sh
ENTRYPOINT ["/bin/docker-entrypoint.sh"]
CMD ["pip","install", "-r", "requirements.txt"]

