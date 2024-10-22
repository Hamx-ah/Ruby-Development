In Ruby, arrays and hashes are fundamental data structures, and there are many ways to traverse or iterate over them. Each method has its own use case, and the most suitable one depends on the context of your application. Let’s explore the different ways to traverse arrays and hashes along with some real-world use cases.

### 1. **Traversing Arrays**

#### 1.1 **Using `each` Method**
The `each` method is the most commonly used iterator to traverse an array. It goes through each element, passing it to a block of code.

**Example:**

```ruby
arr = [1, 2, 3, 4, 5]

arr.each do |num|
  puts num * 2
end
```

**Use Case:**  
- Ideal when you want to perform an action on every element of an array (like logging, doubling values, etc.).
- Common in daily operations where each element needs to be processed without modification to the original array.

---

#### 1.2 **Using `map` Method**
The `map` method returns a new array containing the values returned by the block. It is commonly used for transforming data.

**Example:**

```ruby
arr = [1, 2, 3, 4, 5]
new_arr = arr.map { |num| num * 2 }
puts new_arr.inspect  # Output: [2, 4, 6, 8, 10]
```

**Use Case:**
- When you want to transform or create a new array based on the original.
- Great for generating transformed datasets, such as converting a list of objects into formatted strings or changing the units of measurement.

---

#### 1.3 **Using `each_with_index` Method**
This method is similar to `each`, but it also provides the index of the current element.

**Example:**

```ruby
arr = ['apple', 'banana', 'cherry']
arr.each_with_index do |fruit, index|
  puts "#{index}: #{fruit}"
end
```

**Use Case:**
- When you need both the value and its position in the array, such as generating an ordered list for display or logging purposes.
- Perfect for pagination-like scenarios where position matters.

---

#### 1.4 **Using `for` Loop**
Although not commonly used in professional Ruby code, the `for` loop is another way to iterate over arrays.

**Example:**

```ruby
arr = [1, 2, 3, 4, 5]
for num in arr
  puts num
end
```

**Use Case:**
- Can be used when a more traditional loop structure is desired, though it's less idiomatic in Ruby.
- Useful if coming from other languages like C or Java.

---

#### 1.5 **Using `while` Loop**
The `while` loop continues to iterate as long as the given condition is true.

**Example:**

```ruby
arr = [1, 2, 3, 4, 5]
i = 0
while i < arr.length
  puts arr[i]
  i += 1
end
```

**Use Case:**
- Useful when you need more control over iteration (e.g., if you want to skip elements based on conditions).
- Great for algorithms where you manually adjust the index during iteration.

---

#### 1.6 **Using `select` Method**
The `select` method returns a new array consisting of elements for which the block returns `true`.

**Example:**

```ruby
arr = [1, 2, 3, 4, 5]
even_numbers = arr.select { |num| num.even? }
puts even_numbers.inspect  # Output: [2, 4]
```

**Use Case:**
- Filtering an array based on specific conditions.
- Ideal when generating reports where only certain records (like active users) are displayed.

---

#### 1.7 **Using `reduce` / `inject` Method**
This method accumulates values based on the result of the block.

**Example:**

```ruby
arr = [1, 2, 3, 4, 5]
sum = arr.reduce(0) { |accumulator, num| accumulator + num }
puts sum  # Output: 15
```

**Use Case:**
- Useful for reducing an array to a single value, like calculating the sum, product, or concatenation.
- Perfect for summarizing datasets or calculating metrics (e.g., total revenue).

---

### 2. **Traversing Hashes**

#### 2.1 **Using `each` Method**
The `each` method is the most common way to traverse a hash. It yields both the key and value to the block.

**Example:**

```ruby
hash = { a: 1, b: 2, c: 3 }

hash.each do |key, value|
  puts "#{key}: #{value}"
end
```

**Use Case:**
- Simple iteration where both key and value are needed, such as logging or building a formatted string from the hash.
- Frequently used for generating HTML from data stored in a hash.

---

#### 2.2 **Using `each_key` and `each_value`**
These methods allow you to iterate over just the keys or just the values of a hash.

**Example:**

```ruby
hash = { a: 1, b: 2, c: 3 }

# Iterate over keys
hash.each_key { |key| puts key }

# Iterate over values
hash.each_value { |value| puts value }
```

**Use Case:**
- Ideal when you only need the keys or values without needing the other, such as checking for the existence of keys in one hash and inserting them into another.
- Great for cleaning data or validating input.

---

#### 2.3 **Using `map` Method**
The `map` method can also be used with hashes to return a new array of key-value pairs transformed by the block.

**Example:**

```ruby
hash = { a: 1, b: 2, c: 3 }
new_array = hash.map { |key, value| [key, value * 2] }
puts new_array.inspect  # Output: [[:a, 2], [:b, 4], [:c, 6]]
```

**Use Case:**
- Perfect for transforming the contents of a hash into an array, such as modifying the values for display or data manipulation.

---

#### 2.4 **Using `select` Method**
The `select` method returns a new hash consisting of key-value pairs for which the block returns `true`.

**Example:**

```ruby
hash = { a: 1, b: 2, c: 3, d: 4 }
even_values = hash.select { |key, value| value.even? }
puts even_values.inspect  # Output: { b: 2, d: 4 }
```

**Use Case:**
- Filtering a hash based on certain criteria, like extracting only active users from a list of user accounts.
- Used in scenarios where only specific key-value pairs are of interest (like a report or summary).

---

#### 2.5 **Using `reject` Method**
This method returns a new hash excluding key-value pairs for which the block returns `true`.

**Example:**

```ruby
hash = { a: 1, b: 2, c: 3 }
odd_values = hash.reject { |key, value| value.even? }
puts odd_values.inspect  # Output: { a: 1, c: 3 }
```

**Use Case:**
- When you need to filter out key-value pairs that don't meet specific criteria.
- Good for cleaning up or refining datasets.

---

### Professional-Level Scenarios

1. **E-commerce Website:**
   - Traversing an array of products with `each`, transforming them with `map`, and filtering them using `select` to display products under a certain price.

2. **Log Parsing Tool:**
   - Using `each_key` to analyze error codes from log files stored in a hash and track their frequencies.

3. **Financial Application:**
   - Using `reduce` to sum up transactions for a specific user from an array of transaction data.

4. **Data Cleaning Pipeline:**
   - Using `select` and `reject` on a hash of customer records to filter out invalid or inactive entries before performing operations on them.

By mastering these traversal methods, you can handle a wide range of scenarios in Ruby effectively and with performance in mind.