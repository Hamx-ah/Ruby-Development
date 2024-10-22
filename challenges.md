Here’s a list of problems categorized into **arrays**, **hashes**, **modules**, and **classes** for Ruby. Each problem is progressively challenging, offering opportunities to strengthen your understanding of Ruby's data structures and object-oriented programming.

### Arrays

1. **Find Even Numbers**
   - Problem: Write a method that takes an array of numbers and returns a new array containing only even numbers.
   - Challenge: Handle empty arrays and include the use of iterators like `select`.

2. **Sum of Elements**
   - Problem: Write a method that returns the sum of all elements in an array.
   - Challenge: Try solving this using both `each` and `inject/reduce`.

3. **Array Reversal**
   - Problem: Reverse the elements of an array without using Ruby's built-in `reverse` method.
   - Challenge: Use loops or recursion to achieve this.

4. **Unique Elements**
   - Problem: Create a method that removes duplicate elements from an array without using `uniq`.
   - Challenge: Use manual iteration and include logic for detecting duplicates.

5. **Rotate an Array**
   - Problem: Rotate an array by `n` positions. For example, rotating `[1, 2, 3, 4, 5]` by 2 would result in `[3, 4, 5, 1, 2]`.
   - Challenge: Consider edge cases where `n` is greater than the size of the array.

6. **Find Common Elements**
   - Problem: Write a method that returns the common elements between two arrays.
   - Challenge: Implement it using iterators like `select` and `include?`.

### Hashes

1. **Count Occurrences**
   - Problem: Write a method that counts the number of occurrences of each element in an array and returns a hash.
   - Example: `['a', 'b', 'a', 'c', 'b'] => { 'a' => 2, 'b' => 2, 'c' => 1 }`
   - Challenge: Explore the use of the hash default value `Hash.new(0)`.

2. **Swap Keys and Values**
   - Problem: Write a method that swaps the keys and values in a hash.
   - Challenge: Handle cases where multiple keys have the same value.

3. **Merge Two Hashes**
   - Problem: Create a method that merges two hashes, giving precedence to the values from the second hash if there are duplicate keys.
   - Challenge: Try using `merge` and custom logic to handle merging.

4. **Nested Hash Access**
   - Problem: Write a method to safely access a nested hash, e.g., `h[:a][:b][:c]`.
   - Challenge: Ensure that the method returns `nil` if any part of the nested structure doesn’t exist.

5. **Find Key with Maximum Value**
   - Problem: Write a method that returns the key of the hash that has the largest value.
   - Challenge: Use `each` or `max_by` to implement the solution.

### Modules

1. **Math Operations Module**
   - Problem: Create a module `MathOperations` that contains methods to perform basic mathematical operations (addition, subtraction, multiplication, division).
   - Challenge: Include checks for division by zero.

2. **Convert Temperature Module**
   - Problem: Write a module `TemperatureConverter` that converts temperatures between Celsius, Fahrenheit, and Kelvin.
   - Challenge: Use constants and handle floating-point precision.

3. **String Manipulation Module**
   - Problem: Create a module `StringManipulator` that includes methods to capitalize words, reverse strings, and count vowels.
   - Challenge: Allow the methods to be used as both instance methods and mixins in other classes.

4. **Authentication Module**
   - Problem: Write a module `Authentication` that includes methods to handle user login, sign-up, and password validation.
   - Challenge: Implement password hashing and validation logic.

5. **Logger Module**
   - Problem: Create a `Logger` module that logs messages with different severity levels (`info`, `warn`, `error`).
   - Challenge: Include a way to specify the log level and only print messages at or above that level.

### Classes

1. **Simple Calculator Class**
   - Problem: Write a `Calculator` class that includes methods for basic arithmetic operations (add, subtract, multiply, divide).
   - Challenge: Implement error handling for invalid inputs (e.g., division by zero).

2. **Bank Account Class**
   - Problem: Create a `BankAccount` class that allows users to deposit, withdraw, and check their balance.
   - Challenge: Ensure the account can’t be overdrawn and handle edge cases like negative deposits.

3. **Product Class with Discounts**
   - Problem: Write a `Product` class that has attributes like `name`, `price`, and `category`. Add a method to apply a discount.
   - Challenge: Include a validation method that ensures price is never negative.

4. **Employee Class with Inheritance**
   - Problem: Create an `Employee` class with attributes like `name`, `position`, and `salary`. Then, create subclasses `Manager` and `Intern` that inherit from `Employee`.
   - Challenge: Implement a custom method in `Manager` (e.g., assigning tasks) and a different one in `Intern`.

5. **Shopping Cart Class**
   - Problem: Write a `ShoppingCart` class that allows items to be added, removed, and calculates the total price.
   - Challenge: Include support for applying discounts and managing quantities of items.

6. **Library System**
   - Problem: Create a `Library` class that manages a collection of books. Each book should be an instance of the `Book` class, which has attributes like title, author, and year.
   - Challenge: Implement methods to add, remove, and search for books by title or author.

7. **Game Character Class**
   - Problem: Write a `Character` class for a game that tracks attributes like health, attack power, and defense. Add methods for taking damage and attacking other characters.
   - Challenge: Implement leveling up and stat improvements.

8. **Animal Class with Polymorphism**
   - Problem: Create an `Animal` class with a method `speak`. Then, create subclasses like `Dog`, `Cat`, and `Cow`, each overriding the `speak` method with their respective sounds.
   - Challenge: Use polymorphism to call the correct `speak` method for each subclass.

### Advanced Challenges

1. **Observer Pattern Implementation**
   - Problem: Implement the Observer design pattern. Create a `Publisher` class that can notify `Subscribers` when there is an update.
   - Challenge: Use a module to include observer functionality in other classes.

2. **Dependency Injection in Classes**
   - Problem: Write a `Car` class that requires a `Engine` object to function. Implement dependency injection to switch between different engine types (`ElectricEngine`, `GasEngine`).
   - Challenge: Demonstrate how dependency injection improves testability.

3. **Command Pattern**
   - Problem: Implement the Command design pattern in Ruby. Create a `Command` interface with concrete classes like `LightOnCommand` and `LightOffCommand` that control a `Light` object.
   - Challenge: Add an `Undo` feature to reverse the most recent command.

These problems cover a wide range of concepts, from simple data manipulation to more complex object-oriented principles. Solving these will help deepen your understanding of Ruby while exposing you to practical, real-world use cases.