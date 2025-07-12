FROM python:3.8

WORKDIR /app

COPY requirements.txt .
COPY data /app/data
COPY weights.hdf5 .
COPY predict.py .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt


CMD ["python", "predict.py"]
