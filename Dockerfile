FROM python:3.14-slim
# Creates working directory inside app container
WORKDIR /app
# Copy only requirements.txt file in install dependencies
COPY requirements.txt .

#--no-cache-dir added in order to avoid keeping caches to keep image size minimum.
RUN pip install --no-cache-dir -r requirements.txt
# Copy rest of the code from local directory to /app directory inside app container
COPY . . 
#Final run upon completion of whole workflow of dockerfile
CMD ["python", "app.py"]
