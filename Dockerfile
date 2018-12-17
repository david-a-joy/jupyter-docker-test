FROM jupyter/base-notebook:14fdfbf9cfc1

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
