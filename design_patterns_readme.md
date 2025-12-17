# Design Patterns: Gang of Four (GoF)

A comprehensive guide to the 23 classic design patterns with practical examples in Dart and Flutter.

## What Are Design Patterns?

Design patterns are reusable solutions to common problems in software design. They represent best practices evolved over time by experienced developers. The Gang of Four (GoF) cataloged 23 fundamental patterns in their 1994 book "Design Patterns: Elements of Reusable Object-Oriented Software."

## Why Learn Design Patterns?

- Write more maintainable and flexible code
- Communicate design ideas effectively with other developers
- Recognize common problems and apply proven solutions
- Understand how frameworks like Flutter are architected
- Make better architectural decisions

## The Three Categories

Design patterns are organized into three categories based on their purpose:

### 1. Creational Patterns
Deal with object creation mechanisms. They abstract the instantiation process and make systems independent of how objects are created.

**Patterns**: Singleton, Factory Method, Abstract Factory, Builder, Prototype

[Read more about Creational Patterns →](./creational/creational_readme.md)

### 2. Structural Patterns
Deal with object composition and relationships. They help ensure that when one part changes, the entire structure doesn't need to change.

**Patterns**: Adapter, Bridge, Composite, Decorator, Facade, Flyweight, Proxy

[Read more about Structural Patterns →](./structural/structural_readme.md)

### 3. Behavioral Patterns
Deal with communication between objects and how responsibilities are distributed. They characterize complex control flow that's difficult to follow at runtime.

**Patterns**: Chain of Responsibility, Command, Iterator, Mediator, Memento, Observer, State, Strategy, Template Method, Visitor

[Read more about Behavioral Patterns →](./behavioral/behavioral_readme.md)

## Most Common Patterns in Software Development

Based on industry usage and surveys, these patterns appear most frequently in production code:

1. **Singleton** - Widely used for managing shared resources
2. **Factory Method** - Essential for object creation abstraction
3. **Observer** - Fundamental for event-driven systems
4. **Strategy** - Common for interchangeable algorithms
5. **Decorator** - Frequently used for adding functionality dynamically
6. **Adapter** - Critical for integrating third-party code
7. **Facade** - Popular for simplifying complex subsystems
8. **Template Method** - Common in framework design

These patterns solve problems that occur repeatedly across different types of applications, making them universally valuable.

## Most Common Patterns in Mobile Application Development

Mobile development has specific needs that make certain patterns more prevalent:

1. **Singleton** - Managing app-wide services (database, network, authentication)
2. **Observer** - Handling UI updates from data changes (reactive programming)
3. **Factory Method** - Creating platform-specific components (iOS vs Android)
4. **Builder** - Constructing complex objects like network requests or configurations
5. **Adapter** - Wrapping platform-specific APIs or third-party SDKs
6. **State** - Managing screen states (loading, success, error)
7. **Strategy** - Implementing different behaviors (payment methods, authentication)
8. **Facade** - Simplifying complex mobile APIs (camera, location, sensors)
9. **Proxy** - Lazy loading images and caching network data
10. **Command** - Implementing undo/redo and scheduled operations

Mobile apps are event-driven, resource-constrained, and highly interactive, which explains why Observer, State, and Singleton are so common.

## Most Common Patterns in Flutter Development

Flutter has its own architectural preferences that make certain patterns especially relevant:

1. **Observer** - Core to Flutter's reactive model (ChangeNotifier, ValueNotifier, StreamController)
2. **Composite** - The foundation of Flutter's widget tree
3. **Decorator** - How you wrap widgets (Container, Padding, GestureDetector)
4. **Builder** - Creating complex widgets and configurations
5. **Singleton** - Managing services and providers
6. **Factory Method** - Creating different widget types dynamically
7. **State** - Managing widget states and screen transitions
8. **Strategy** - Switching between different implementations (themes, platforms)
9. **Facade** - Wrapping complex Flutter APIs or creating custom widgets
10. **Proxy** - Image caching and lazy loading with CachedNetworkImage

Flutter's declarative UI model and widget composition system naturally align with Composite, Decorator, and Observer patterns. Understanding these helps you write idiomatic Flutter code.

## Minimum List of Patterns Everyone Should Master

Here are the essential patterns every developer should know, ordered by priority:

### Must Know (Priority 1)

1. **Singleton**
   - Why: You'll use it in almost every project for managing shared resources
   - Examples: Database connections, API clients, configuration managers

2. **Factory Method**
   - Why: Essential for writing flexible, testable code that doesn't depend on concrete classes
   - Examples: Creating objects based on conditions, dependency injection

3. **Observer**
   - Why: Foundation of modern reactive programming and event-driven systems
   - Examples: State management, event listeners, pub-sub systems

4. **Strategy**
   - Why: Makes algorithms interchangeable and testable
   - Examples: Sorting, validation, payment processing

5. **Decorator**
   - Why: Adds functionality without modifying existing code
   - Examples: Adding features to objects, middleware, widget wrapping

### Should Know (Priority 2)

6. **Builder**
   - Why: Simplifies construction of complex objects
   - Examples: Building objects with many optional parameters

7. **Adapter**
   - Why: Critical for integrating external libraries and legacy code
   - Examples: Making incompatible interfaces work together

8. **Facade**
   - Why: Simplifies complex systems and improves code readability
   - Examples: Creating simple interfaces for complex subsystems

9. **State**
   - Why: Cleanly manages object behavior based on internal state
   - Examples: Screen states, connection states, player controls

10. **Composite**
    - Why: Fundamental for tree structures and hierarchical data
    - Examples: UI components, file systems, organizational structures

### Good to Know (Priority 3)

11. **Command**
    - Why: Useful for undo/redo and transaction systems
    - Examples: Action history, macro recording

12. **Template Method**
    - Why: Defines algorithm structure while allowing customization
    - Examples: Framework hooks, lifecycle methods

13. **Proxy**
    - Why: Controls access and adds lazy loading
    - Examples: Caching, lazy initialization, access control

### Why This Priority Order?

**Priority 1 patterns** solve problems you'll encounter in virtually every project. They're the building blocks of good software architecture.

**Priority 2 patterns** become essential as your projects grow in complexity. You'll encounter situations where these patterns provide clear, elegant solutions.

**Priority 3 patterns** are valuable for specific scenarios. You may not use them daily, but knowing them helps you recognize when they're the right solution.

The remaining GoF patterns (Abstract Factory, Bridge, Flyweight, Proxy, Chain of Responsibility, Iterator, Mediator, Memento, Visitor) are more specialized. Learn them as you encounter problems they solve, but they're not critical for day-to-day development.

## How to Use This Repository

1. Start with the category overview that interests you most
2. Pick a pattern from that category
3. Read the pattern's readme to understand the concept
4. Study the Dart/Flutter example code
5. Read the explanation to see how the example works
6. Try implementing the pattern in your own project
7. Move to the next pattern

## Learning Path Recommendation

### For Beginners
Start with Creational patterns (Singleton → Factory → Builder), then move to basic Structural patterns (Decorator → Facade → Adapter).

### For Mobile Developers
Focus on Observer → State → Strategy → Builder → Singleton → Decorator → Composite.

### For Flutter Developers
Prioritize Observer → Composite → Decorator → Builder → Singleton → State → Strategy.

## Pattern Selection Checklist

Before applying a pattern, ask yourself:

- Does this problem occur frequently in my codebase?
- Will this pattern make the code more maintainable?
- Am I adding unnecessary complexity?
- Is there a simpler solution?
- Will other developers understand this pattern?

Remember: patterns are tools, not goals. Use them when they solve real problems, not just to use patterns.

## Resources

- Original GoF Book: "Design Patterns: Elements of Reusable Object-Oriented Software"
- Refactoring.Guru: Excellent visual explanations
- Source Making: Detailed pattern explanations
- Flutter Documentation: Official Flutter architecture guidance

## Contributing

Feel free to improve examples, add more use cases, or clarify explanations. Good design patterns are learned through practice and discussion.

---

**Next Steps**: Choose a category and start with your first pattern!