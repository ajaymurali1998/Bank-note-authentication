
FROM python:3.7


WORKDIR /app
ADD . /app

# Install dependencies
RUN pip install -r requirements.txt

# Expose port 
ENV PORT 8080

# Run the application:
CMD ["gunicorn", "app:app", "--config=config.py"]
