import random
import string

def generate_random_password(length=12):
    # Define characters to include in the password
    characters = string.ascii_letters + string.digits + string.punctuation

    # Generate a random password by selecting characters randomly
    password = ''.join(random.choice(characters) for _ in range(length))
    
    return password

# Generate a random password with the default length (12 characters)
random_password = generate_random_password()
print(f"Random Password: {random_password}")

