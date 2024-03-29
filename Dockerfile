FROM python:3

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY main.py backend.py images ./

CMD [ "streamlit", "run", "/app/main.py" ]