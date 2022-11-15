FROM python:3.8.2-slim

COPY app.py .
COPY data/steel_plates_fault.csv data/.
COPY model/finalized_model.sav model/.
COPY image/logo.png image/.
COPY image/favicon.ico image/.
COPY requirements.txt .

RUN pip install -r requirements.txt

CMD streamlit run app.py --server.port=8050 --server.address=0.0.0.0 --logger.level error