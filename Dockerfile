# Use the base image provided by AWS Lambda
FROM public.ecr.aws/lambda/python:3.8

# Copy the earlier created lambda function code and the requirements.txt file into the container
COPY app.py requirements.txt ./

# Install any dependencies
RUN pip install -r requirements.txt

# Set the CMD to your handler
CMD ["app.handler"]
