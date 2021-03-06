FROM sentry:8.22

COPY google.conf.py .
RUN pip install https://github.com/getsentry/sentry-auth-google/archive/master.zip \
  && cat google.conf.py >> /etc/sentry/sentry.conf.py \
  && rm google.conf.py

RUN pip install sentry-plugins
