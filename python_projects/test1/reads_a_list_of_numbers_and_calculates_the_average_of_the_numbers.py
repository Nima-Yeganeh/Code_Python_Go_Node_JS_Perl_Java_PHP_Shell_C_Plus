def calculate_mean(numbers):
    if not numbers:
        return None
    return sum(numbers) / len(numbers)

number_list = [2, 4, 6, 8, 10]
mean_result = calculate_mean(number_list)

if mean_result is not None:
    print(f"The mean of the numbers is: {mean_result}")
else:
    print("The list is empty. Cannot calculate mean.")


