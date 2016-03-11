FROM chaonet/python:2.7
ADD . /code
WORKDIR /code
RUN pip install -r requirements.txt
ENV MAIL_USERNAME ${MAIL_USERNAME:-example@qq.com}
ENV MAIL_PASSWORD ${MAIL_PASSWORD:-example}
CMD gunicorn run:app -b 0.0.0.0:8000