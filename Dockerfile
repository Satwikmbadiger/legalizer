# Use official Python image
FROM python:3.13-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set work directory
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --upgrade pip && \
    pip install \
      --retries 5 \
      --timeout 120 \
      --resume-retries 3 \
      --prefer-binary \
      --no-cache-dir \
      -i https://pypi.tuna.tsinghua.edu.cn/simple \
      -r requirements.txt

# Copy project files
COPY src/ ./src

# Expose port
EXPOSE 5000

# Run the Flask app
CMD ["python", "src/app.py"]