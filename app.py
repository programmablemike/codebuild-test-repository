import json

def handler(event, context):
    # Just return a message and the received event
    return {
        'statusCode': 200,
        'body': json.dumps('Hello from Lambda! Received event: ' + json.dumps(event))
    }
