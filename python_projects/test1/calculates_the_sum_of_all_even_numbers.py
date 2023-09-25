def sum_of_even_numbers(n):
    total = 0
    for number in range(2, n + 1, 2):
        total += number
    return total

# Input: Positive integer 'n'
n = 10  # You can change this value to any positive integer
result = sum_of_even_numbers(n)
print(f"The sum of even numbers from 2 to {n} is {result}")

