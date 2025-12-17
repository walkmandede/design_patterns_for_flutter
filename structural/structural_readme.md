# Structural Design Patterns

Structural patterns explain how to assemble objects and classes into larger structures while keeping these structures flexible and efficient. They focus on the composition of classes and objects to form new functionality.

## Why Structural Patterns?

Flutter is built around composing widgets into trees. Structural patterns are fundamental to how Flutter works and help you:
- Add new functionality to existing classes without modifying them
- Create complex UI hierarchies from simple components
- Provide simplified interfaces to complex subsystems
- Share objects efficiently to reduce memory usage
- Control access to objects

## Patterns in This Category

### 1. Adapter
Converts the interface of a class into another interface that clients expect. Allows incompatible interfaces to work together.

**Flutter Use Case**: Wrapping third-party libraries, adapting legacy code to new APIs, converting data formats between layers

### 2. Bridge
Separates abstraction from implementation so they can vary independently.

**Flutter Use Case**: Separating UI from business logic, creating platform-independent features with platform-specific implementations

### 3. Composite
Composes objects into tree structures to represent part-whole hierarchies. Lets clients treat individual objects and compositions uniformly.

**Flutter Use Case**: Widget tree structure, menu systems, file/folder hierarchies, organizational charts

### 4. Decorator
Attaches additional responsibilities to objects dynamically. Provides a flexible alternative to subclassing.

**Flutter Use Case**: Wrapping widgets with Padding, Container, GestureDetector, adding logging to services, adding caching to API calls

### 5. Facade
Provides a simplified interface to a complex subsystem.

**Flutter Use Case**: Wrapping complex APIs, creating simplified database interfaces, aggregating multiple services into one interface

### 6. Flyweight
Uses sharing to support large numbers of fine-grained objects efficiently by sharing common state.

**Flutter Use Case**: Rendering thousands of similar items efficiently, caching images, reusing text styles

### 7. Proxy
Provides a surrogate or placeholder for another object to control access to it.

**Flutter Use Case**: Lazy loading images, caching network responses, adding authentication checks, logging access to objects

## When to Use Structural Patterns

Use structural patterns when:
- You need to add functionality without changing existing code
- You want to simplify complex interfaces
- You need to compose objects into tree structures
- You want to reduce memory usage through object sharing
- You need to control access to objects
- You want to separate abstraction from implementation

## Flutter Connection

Flutter uses structural patterns heavily:
- The entire widget system is Composite pattern
- When you wrap widgets, you're using Decorator pattern
- Material and Cupertino widgets use Bridge pattern
- Image caching uses Flyweight pattern

Understanding these patterns will help you understand Flutter's architecture better.

## Common Mistakes

- Adding too many wrapper layers (decorator overuse)
- Creating facades that are as complex as the subsystem
- Not considering when to use composition vs inheritance
- Overengineering simple problems with structural patterns
- Forgetting that Flutter already implements many of these patterns

## Next Steps

Start with Decorator and Composite since they're already everywhere in Flutter. Then learn Facade for simplifying complex features, and Adapter for integrating external libraries.