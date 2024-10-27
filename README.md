# With

`With` is a Swift library that provides a utility function to simplify the usage of closures for various operations. These functions allow you to perform actions with one or more values in a concise and readable manner.

This library aims to create a new scope and perform operations within it. This can be useful when you need to perform a series of operations with a set of values and want to avoid creating a new scope manually.

## Features

- Inlineable utility functions for performing actions with closures.
- Supports up to ten parameters for the `with` function.

## Installation

### Swift Package Manager

To integrate `With` into your project using Swift Package Manager, add the following dependency to your `Package.swift` file:

```swift
dependencies: [
    .package(url: "https://github.com/ktiays/With.git", from: "1.1.0")
]
```

## Usage

Using `with` with a single value:

```swift
let result = with {
    // Your computation here
    return 42
}
print(result) // Output: 42
```

Using `with` with multiple values:

```swift
let result = with(1, 2, 3) { a, b, c in
    return a + b + c
}
print(result) // Output: 6
```

Using `with` with computed values by a closure:

```swift
let result = with {
    let a = 1
    let b = 2
    let c = 3
    return a + b + c
} { value in
    return value * 2
}
print(result) // Output: 12
```
