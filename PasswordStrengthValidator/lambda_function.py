import json

def lambda_handler(event, context):
    password = event.get('password', '')
    score = 0

    if len(password) >= 8:
        score += 1
    if len(password) >= 11:
        score += 1
    if any(c.isdigit() for c in password):
        score += 1
    if any(c.isupper() for c in password):
        score += 1
    if any(c in '!@#$%^&*()_+' for c in password):
        score += 1

    if score < 3:
        strength = 'Low'
    elif score == 3:
        strength = 'Medium'
    else:
        strength = 'High'

    return {
        'statusCode': 200,
        'body': json.dumps({'password_strength': strength})
    }
