# Creational Design Patterns

Creational patterns provide mechanisms for object creation that increase flexibility and reuse of existing code. They abstract the instantiation process and help make your system independent of how objects are created, composed, and represented.

## Why Creational Patterns?

In mobile development, especially with Flutter/Dart, you often need to:
- Create complex objects with many configuration options
- Ensure only one instance of a service exists (like database connections)
- Create different types of objects without specifying their exact classes
- Clone existing objects without depending on their concrete classes

Creational patterns solve these problems elegantly.

## Patterns in This Category

### 1. Singleton
Ensures a class has only one instance and provides a global access point to it.

**Flutter Use Case**: Database helper, API client, authentication service, theme manager

### 2. Factory Method
Defines an interface for creating objects but lets subclasses decide which class to instantiate.

**Flutter Use Case**: Creating different types of widgets based on platform, creating payment processors, creating notification handlers

### 3. Abstract Factory
Provides an interface for creating families of related objects without specifying their concrete classes.

**Flutter Use Case**: Creating platform-specific UI components (iOS vs Android), creating theme-based widget sets, creating different API clients for dev/staging/prod

### 4. Builder
Separates the construction of complex objects from their representation, allowing the same construction process to create different representations.

**Flutter Use Case**: Building complex widgets with many optional parameters, constructing HTTP requests, building user profiles with optional fields

### 5. Prototype
Creates new objects by copying existing objects (prototypes) rather than creating from scratch.

**Flutter Use Case**: Cloning configuration objects, duplicating user preferences, creating templates for forms or documents

## When to Use Creational Patterns

Use creational patterns when:
- Object creation is complex and involves multiple steps
- You need to control how many instances of a class exist
- You want to decouple object creation from usage
- You need to create different variations of similar objects
- You want to hide the creation logic from clients

## Common Mistakes

- Overusing Singleton when simple dependency injection would work
- Creating factories for simple objects that don't need abstraction
- Making builders too complex with unnecessary steps
- Not considering thread safety in Singleton implementations
- Using patterns just for the sake of using them

## Next Steps

Start with the Singleton pattern as it's the most commonly used in mobile apps, then move to Factory Method and Builder as they're highly practical for Flutter development.