FROM python:2.7.11

MAINTAINER Sandeep (jsanweb@gmail.com)

# Create app directory.
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies.
COPY requirements.txt /usr/src/app/
RUN pip install -r requirements.txt

# Copy source code.
COPY . /usr/src/app

# Expose ports.
EXPOSE 9001

# Start app.
CMD ["python", "app.py"]
