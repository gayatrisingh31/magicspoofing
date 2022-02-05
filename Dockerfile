FROM python:3.8-alpine
WORKDIR /app
COPY . .
RUN /usr/local/bin/python -m pip install --no-cache-dir --upgrade pip \
    && pip3 install --no-cache-dir -r requirements.txt
CMD ["python", "magicspoofmail.py"]
EXPOSE 8080

