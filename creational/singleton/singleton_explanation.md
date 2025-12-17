# Singleton Pattern - Code Examples Explanation

This document explains the three code examples demonstrating the Singleton pattern in Dart and Flutter.

## Example 1: Basic Singleton with Static Instance

This is the traditional Singleton implementation. The class has a private constructor named `DatabaseHelper._internal()`. The underscore before `internal` makes it private in Dart. This means no code outside this class can call `DatabaseHelper._internal()` to create new instances.

Inside the class, we have a static variable `_instance` that stores the single instance. It's static because it belongs to the class itself, not to any particular instance. We also have a static getter called `instance` that provides access to the Singleton. When you call `DatabaseHelper.instance`, it checks if `_instance` is null. If it is null, meaning this is the first time anyone is asking for the instance, it creates a new instance by calling the private constructor. If `_instance` already exists, it just returns the existing instance.

The `??=` operator is Dart's null-aware assignment. It means "if the left side is null, assign the right side to it; otherwise, do nothing." This ensures the instance is created only once.

The rest of the class contains normal business logic. The `database` variable and `initDatabase()` method show how you would actually use this Singleton to manage a database connection. Every part of your app that calls `DatabaseHelper.instance` gets the exact same object with the same database connection.

## Example 2: Singleton with Factory Constructor

This approach uses Dart's factory constructor feature, which is more elegant and idiomatic in Dart. A factory constructor doesn't always create a new instance. It can return an existing instance instead, which makes it perfect for Singletons.

When you write `ApiClient()`, you're calling the factory constructor. Inside this factory constructor, we return `_instance`, which is created immediately when the class first loads. The `??=` operator again ensures that if `_instance` is null, we create it by calling the private named constructor `ApiClient._internal()`, and if it already exists, we just return it.

This pattern is cleaner because users of your class don't need to know they're getting a Singleton. They just call `ApiClient()` like they would with any normal class, but behind the scenes, they always get the same instance. The syntax looks natural and familiar, which makes the code easier to read.

The example shows a realistic API client with a base URL and headers. You can add methods like `get()`, `post()`, etc., and every part of your app will use the same configured client with the same settings.

## Example 3: Flutter-Specific Singleton (Settings Manager)

This example shows a practical Flutter Singleton that manages app settings. It demonstrates how Singletons work in real Flutter applications, particularly with asynchronous initialization.

The pattern combines both previous approaches. It has a factory constructor for easy access and uses a static instance. The key difference here is the async initialization. Many Flutter Singletons need to load data when they're first created, such as loading saved settings from SharedPreferences or reading from a database.

The `init()` method is async and loads settings from SharedPreferences. This is a common pattern in Flutter. You can't do async work in a constructor, so Singletons that need async initialization separate the creation of the instance from the initialization of its data. Your app would typically call `await SettingsManager.instance.init()` early in the `main()` function before running the app.

The private `_loadSettings()` method shows how you'd actually load data in a real app. It uses `SharedPreferences.getInstance()`, which itself returns a Singleton-like instance. The settings are stored in private variables with public getters and setters. The setters not only update the in-memory value but also persist it to SharedPreferences immediately, ensuring settings are never lost.

This example is particularly useful because it shows a complete, production-ready Singleton that handles both synchronous operations like getting and setting values, and asynchronous operations like initialization and persistence.

## Key Differences Between Examples

The first example is the most explicit and traditional. It's clear what's happening at every step, making it good for learning. The second example is more idiomatic Dart, using language features to make the code cleaner. The third example is the most practical, showing how you'd actually use Singletons in Flutter applications with async initialization and state management.

## Testing Singletons

One common concern with Singletons is testing. In unit tests, you might want to reset the Singleton between tests. You can add a method like `reset()` that sets `_instance` back to null, but only include this in debug builds or test environments. Alternatively, consider using dependency injection for better testability in larger applications.

## Thread Safety Note

Dart is single-threaded with an event loop, so you don't need to worry about thread safety like you would in languages like Java or C++. The examples shown here are safe in Dart's execution model. However, if you're using isolates for parallel computation, each isolate has its own memory and would have its own Singleton instance.