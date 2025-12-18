# Factory Method Pattern

## Definition

Factory Method is a creational design pattern that provides an interface for creating objects in a superclass but allows subclasses to alter the type of objects that will be created. It defines a method for creating objects but lets subclasses decide which class to instantiate.

## The Problem

You are building an application that initially works with one type of object. Your code directly instantiates this class throughout the application. Later, you need to support additional types. Adding these new types requires modifying code in many places, which violates the Open/Closed Principle and makes maintenance difficult.

Additionally, your code becomes tightly coupled to specific classes. This makes testing hard because you cannot easily substitute mock objects. It also makes your code less flexible when requirements change.

## The Solution

The Factory Method pattern suggests replacing direct object construction calls with calls to a special factory method. Objects are still created using constructors, but this happens inside the factory method. Objects returned by a factory method are often called products.

You create an abstract Creator class that declares the factory method. This method returns objects of a Product interface type. Concrete Creator subclasses override the factory method to return different types of products. The key insight is that your main code works with products through their interface, never knowing the concrete class.

## Structure

The pattern has four main participants. The Product interface declares operations that all concrete products must implement. Concrete Products are different implementations of the product interface. The Creator class declares the factory method that returns product objects. The return type matches the product interface. You can declare the factory method as abstract to force subclasses to implement their own versions. Concrete Creators override the base factory method to return different types of products.

The Creator class may also contain core business logic that works with products. This logic depends on the product interface, not concrete products. The factory method decouples this business logic from concrete product classes.

## When to Use

Use Factory Method when you don't know beforehand the exact types and dependencies of the objects your code should work with. The pattern separates product construction code from the code that uses the product, making it easier to extend construction code independently.

Use Factory Method when you want to provide users of your library or framework with a way to extend its internal components. Inheritance is an easy way to extend default behavior, but how would the framework recognize that your subclass should be used instead of a standard component? The solution is to reduce construction code across the framework into a single factory method that anyone can override.

Use Factory Method when you want to save system resources by reusing existing objects instead of rebuilding them each time. This is especially valuable for large, resource-intensive objects like database connections, file systems, and network resources.

## When NOT to Use

Don't use Factory Method when object creation is simple and unlikely to change. If you only have one concrete product class and no plans to add more, factory methods add unnecessary complexity. Also avoid this pattern when the factory logic would be trivial, just wrapping a constructor call without adding value.

If you don't need subclasses and just want a simple way to choose between product types based on a parameter, a static factory method or simple factory function might be more appropriate.

## Benefits

You avoid tight coupling between the creator and concrete products. Your code depends on abstractions, not concrete classes. You follow the Single Responsibility Principle by moving product creation code into one place, making it easier to support. You follow the Open/Closed Principle because you can introduce new product types without breaking existing client code.

The pattern makes your code more testable. You can easily substitute mock or stub products during testing. It also makes your code more flexible. Changing which products are created requires only changing creator subclasses, not client code.

## Drawbacks

The code may become more complicated since you need to introduce many new subclasses to implement the pattern. The best case is when you're introducing the pattern into an existing hierarchy of creator classes. For simple scenarios, the pattern can be overkill, adding complexity without significant benefit.

## Implementation in Dart and Flutter

Dart makes Factory Method implementation clean with abstract classes and factory constructors. You can use abstract classes to define the creator interface and concrete classes for specific creators. Dart's factory constructors provide an alternative approach that's more idiomatic for some use cases.

In Flutter applications, you often see this pattern when creating platform-specific widgets. You might check Platform.isIOS or Platform.isAndroid in a factory method to return the appropriate widget type. This keeps platform-specific code isolated and makes your widgets easier to maintain.

## Real-World Flutter Examples

Creating platform-specific widgets is a classic use case. You have a factory that creates Cupertino widgets on iOS and Material widgets on Android, ensuring your app feels native on each platform. Another common example is HTTP client creation. In production, you use a real HTTP client, but in tests, you use a mock client. Factory Method makes this switch seamless.

Theme creation uses factories extensively. Based on user preferences or system settings, you create light theme objects or dark theme objects with matching colors, fonts, and styles. Payment processing systems create different payment processor objects based on the payment method. Dialog factories create different dialog types based on context or severity.

Navigation systems use factories to create different screen types based on routes. Authentication systems create different authenticator objects based on the auth method. All of these benefit from Factory Method's ability to decouple object creation from usage.

## Related Patterns

Factory Method is often used with Template Method. The factory method can be a step in a larger algorithm defined by the template method. Abstract Factory classes are often based on Factory Methods, but you can also use Prototype. Factory Method is a specialization of Template Method, and it can serve as a step in a large Template Method.

Prototype doesn't require subclassing but often requires an initialization method. Factory Method requires subclassing but doesn't need initialization. Designs that use Factory Method heavily may evolve toward Prototype for greater flexibility.