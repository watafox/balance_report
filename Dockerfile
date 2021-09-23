# Python3のイメージを基にする
FROM python:3.7.10
ENV PYTHONUNBUFFERED 1
USER root

RUN apt-get update
RUN apt-get -y install locales && \
    localedef -f UTF-8 -i ja_JP ja_JP.UTF-8
RUN apt-get install -y vim less

ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8
ENV TZ JST-9
ENV TERM xterm

# ビルド時に/root/appというディレクトリを作成する
RUN mkdir -p /root/app
# requirements.txtを/root/appにコピーする
COPY requirements.txt /root/app
# ワークディレクトリの設定
WORKDIR /root/app

RUN pip install --upgrade pip
RUN pip install --upgrade setuptools
# requirements.txtを基にpip installする
RUN pip install -r requirements.txt
ADD . /root/app/