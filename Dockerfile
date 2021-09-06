FROM python:2.7
LABEL developer="Claudia Everett"

COPY /techtrends/. /app
WORKDIR /app
RUN pip install -r requirements.txt
RUN python init_db.py

CMD ["python", "app.py"]

