def is_palindrome(s):
    # Remove spaces and convert to lowercase for a case-insensitive comparison
    s = ''.join(s.split()).lower()
    return s == s[::-1]

# Input: String
input_string = "A man a plan a canal Panama"  # You can change this string to test other cases
if is_palindrome(input_string):
    print(f"'{input_string}' is a palindrome.")
else:
    print(f"'{input_string}' is not a palindrome.")
