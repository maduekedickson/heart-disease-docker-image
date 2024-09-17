FROM python:3.10-slim

WORKDIR /code

# Copy requirements.txt into the /code directory inside the container
COPY ./requirements.txt /code/requirements.txt

# Install the Python dependencies
RUN pip install --no-cache-dir --default-timeout=1000 -r requirements.txt

# Copy the rest of the source code into the /code directory
COPY ./src /code/src

# Set the command to run the Streamlit app
CMD ["streamlit", "run", "src/main.py"]