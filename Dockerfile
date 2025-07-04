# Use official PyTorch CPU image with Python 3.11
FROM pytorch/pytorch:2.0.1-cpu-py3.11

# Set environment variables to prevent Python from writing .pyc files and enable unbuffered output
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set work directory inside the container
WORKDIR /app

# Install system dependencies needed for pytesseract and other tools
RUN apt-get update && apt-get install -y \
    tesseract-ocr \
    libgl1-mesa-glx \
    && rm -rf /var/lib/apt/lists/*

# Copy only requirements.txt first to leverage Docker cache
COPY requirements.txt .

# Install Python dependencies without cache and with retries, using Tsinghua PyPI mirror
RUN pip install --upgrade pip && \
    pip install \
      --retries 5 \
      --timeout 120 \
      --resume-retries 3 \
      --prefer-binary \
      --no-cache-dir \
      -i https://pypi.tuna.tsinghua.edu.cn/simple \
      -r requirements.txt

# Copy your source code into the container
COPY src/ ./src

# Create uploads directory inside container (optional if mounted via volumes)
RUN mkdir -p /app/uploads

# Expose the port your Flask app runs on
EXPOSE 5000

# Command to run the Flask app
CMD ["python", "src/app.py"]
