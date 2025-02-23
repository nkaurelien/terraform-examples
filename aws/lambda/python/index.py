def lambda_handler(event, context):
    # Provide default values for the keys
    key1 = event.get('key1', 'World !!')
    
    message = 'Hello {} !'.format(key1)
    return {
        'message' : message
    }
   
