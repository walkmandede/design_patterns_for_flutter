# Singleton Pattern

## Definition

Singleton is a creational design pattern that ensures a class has only one instance and provides a global point of access to that instance.

## The Problem

Sometimes you need to ensure that a class has exactly one instance. For example, you want a single database connection shared by all parts of your app, or one configuration object that everyone reads from. If you create multiple instances, you might waste resources, cause conflicts, or have inconsistent state across your application.

Additionally, you need a way for any part of your code to access this single instance easily without passing it around everywhere.

## The Solution

The Singleton pattern solves this by making the class itself responsible for keeping track of its sole instance. The class ensures no other instance can be created and provides a way to access that instance.

## Structure

A Singleton class has three main parts:

**Private Constructor**: The constructor is private, so no external code can create instances using `new ClassName()`.

**Static Instance**: The class holds a reference to its single instance in a private static variable.

**Public Access Point**: A static method or property (often called `instance` or `getInstance()`) provides access to the single instance, creating it if it doesn't exist yet.

## When to Use

Use Singleton when you need to ensure a class has exactly one instance and you need global access to it. Common scenarios include:

**Database Connections**: You want one connection pool shared across your app to manage resources efficiently.

**API Clients**: A single HTTP client instance can reuse connections and manage request queuing.

**Configuration Management**: One object holds all app settings, ensuring consistency.

**Logging**: A single logger ensures all log messages go to the same destination with consistent formatting.

**Cache Management**: One cache instance prevents duplicate cached data and wasted memory.

**Authentication Service**: One service tracks the current user's authentication state consistently.

## When NOT to Use

Don't use Singleton when you're just trying to organize code or when you only happen to need one instance right now but multiple instances wouldn't cause problems. Also avoid Singleton if you need to test your code easily, because Singletons can make unit testing harder since they maintain state between tests.

If you find yourself using many Singletons, consider whether dependency injection would be cleaner.

## Benefits

You get guaranteed control over how many instances exist. You have a global access point that's easy to use from anywhere in your code. The instance is created only when first needed, saving resources. You centralize initialization logic in one place.

## Drawbacks

Singletons can make unit testing harder because they maintain global state. They can hide dependencies in your code since any class can access them without declaring the dependency. If multiple threads access the Singleton simultaneously, you need to handle thread safety. Singletons can also violate the Single Responsibility Principle because the class manages both its business logic and its single instance.

## Implementation in Dart/Flutter

Dart makes Singleton implementation clean and simple. You can use a private constructor with a static instance variable, or you can use factory constructors which are particularly elegant in Dart. Dart's factory constructors can return existing instances, making them perfect for Singletons.

## Real-World Flutter Examples

**SharedPreferences**: While not a pure Singleton, it returns the same instance.

**Firebase**: FirebaseApp instances are Singletons for each app.

**Dio HTTP Client**: Often implemented as a Singleton for API calls.

**GetIt Service Locator**: Manages Singletons for dependency injection.

**Database Helpers**: SQLite database instances are typically Singletons.

## Related Patterns

**Factory Method**: Singletons often use factory methods to control instance creation.

**Abstract Factory**: Can be implemented as Singletons to ensure one factory instance.

**Builder**: Sometimes the builder itself is a Singleton.

**Facade**: Facades are often implemented as Singletons since you typically need only one simplified interface to a subsystem.