# Factory Method Pattern - Code Examples Explanation

This document explains the four code examples demonstrating the Factory Method pattern in Dart and Flutter.

## Example 1: Payment Processing System

This is the classic Factory Method implementation showing the full pattern with abstract creators and products.

The PaymentProcessor interface defines what all payment processors must do. It has three methods: processPayment handles the transaction, getPaymentType returns the payment method name, and validatePayment checks if payment details are valid. This interface is crucial because it allows the system to work with any payment processor without knowing its concrete type.

Each concrete processor implements PaymentProcessor differently. CreditCardProcessor stores card numbers and CVV codes. It simulates connecting to a payment gateway and authorizing the card. PayPalProcessor uses email addresses and simulates the PayPal redirect flow. CryptoProcessor handles cryptocurrency with wallet addresses and blockchain transactions. Each has unique initialization requirements and processing steps, but they all conform to the same interface.

The PaymentService abstract class is the Creator in this pattern. It declares the abstract method createProcessor, which is the factory method. Subclasses must override this to return their specific processor type. The processCheckout method is the template method that uses the factory. It gets a processor by calling createProcessor, validates it, processes the payment, and handles the result. The critical point is that processCheckout works identically for all payment types because it uses the PaymentProcessor interface.

Each concrete service (CreditCardService, PayPalService, CryptoService) extends PaymentService and implements createProcessor. CreditCardService returns a CreditCardProcessor initialized with card details. PayPalService returns a PayPalProcessor with an email. CryptoService returns a CryptoProcessor with wallet information. These services are simple because all the complex logic lives in either the processors or the base service class.

When you create a new payment service and call processCheckout, it automatically uses the correct processor without any conditional logic. The factory method creates the right type. This separation makes adding new payment methods easy. Want Apple Pay? Create ApplePayProcessor and ApplePayService without touching any existing code. The processCheckout method continues working without modification.

## Example 2: Platform-Specific UI Components

This example shows a simpler variant using a static factory method, which is common in Flutter for platform-specific widgets.

The Button interface defines what all buttons must do: render themselves and handle clicks. Each platform implements this differently based on its design language. IOSButton uses Cupertino styling with rounded corners, San Francisco font, and haptic feedback. This creates the iOS look and feel users expect. AndroidButton implements Material Design with elevation, Roboto font, and ripple effects. This matches Android conventions. WebButton adds web-specific features like hover effects and cursor changes.

The ButtonFactory uses a static method instead of a class hierarchy. The createButton method examines a Platform enum and returns the appropriate button type. This approach is simpler than creating separate factory classes when you don't need the full flexibility of inheritance. It provides a clean API: just call ButtonFactory.createButton with a platform and get the right button.

In a real Flutter app, you might have a helper that checks Platform.isIOS or Platform.isAndroid and calls createButton automatically. Your UI code just asks for a button without knowing or caring which platform it's on. The factory handles the decision making.

This simplified approach works well when creation logic is straightforward and based on simple conditions. You sacrifice some flexibility (you cannot override the factory method in subclasses) but gain simplicity. For most platform-specific widget creation, this trade-off makes sense.

## Example 3: Document System

This example demonstrates Factory Method with complex object lifecycles, similar to a document editing application.

The Document interface defines document lifecycle methods. The open method loads and initializes the document. The save method persists it to disk with a filename. The close method cleans up resources. Each document format has different requirements for these operations.

PDFDocument handles PDF-specific tasks like loading renderers, compressing images, and generating PDF structure. These operations are complex and specific to the PDF format. WordDocument works with DOCX files, managing XML parsing, document structure, and file packaging. MarkdownDocument is simpler since Markdown is plain text, but it still follows the same interface.

The DocumentCreator abstract class defines createDocument as the factory method. The editDocument method is the template method that orchestrates the document workflow. It creates a document, opens it, makes edits, saves it, and closes it. This workflow is identical for all document types because it works through the Document interface.

Each creator (PDFCreator, WordCreator, MarkdownCreator) implements createDocument to return its specific document type. The edit workflow in DocumentCreator never changes. You can add support for new formats like HTML or RTF by creating new document classes and creators without modifying the editing logic.

This example shows how Factory Method works when products have complex initialization and cleanup requirements. The pattern ensures the correct product type is created while keeping the usage code simple and consistent.

## Example 4: Notification System

This example shows Factory Method in a more dynamic context where the product type is determined at runtime.

The Notification interface defines how notifications behave. The send method delivers the notification, and the format method prepares the message. Different notification types have different delivery mechanisms.

EmailNotification uses email protocols. It formats messages with HTML and sends them through an SMTP server. SMSNotification uses text messaging services with character limits. PushNotification uses mobile push notification services with special formatting. Each type has unique constraints and requirements.

The NotificationFactory examines user preferences to determine which notification type to create. This is dynamic factory method behavior. Based on a string or enum, it returns the appropriate notification type. The client code doesn't need conditionals. It just calls createNotification and gets the right type based on preferences.

The NotificationService uses the factory to send notifications. It gets a notification object, formats the message, and sends it. The service code is the same regardless of notification type. This makes the system easy to extend. Adding Slack notifications or Discord notifications just requires implementing the Notification interface and adding a case to the factory.

## Key Differences Between Examples

Example 1 shows the full pattern with abstract creators and template methods. This is most flexible but also most complex. Use this when you have complex creation logic and need subclasses to customize behavior.

Example 2 uses a static factory method for simplicity. This works when creation is straightforward and based on simple conditions. It's less flexible but easier to understand and use.

Example 3 demonstrates the pattern with complex object lifecycles. Products have initialization and cleanup requirements. The pattern ensures correct handling of these lifecycles across all product types.

Example 4 shows dynamic factory behavior where the product type is determined at runtime based on data or user preferences. This is common in real applications where behavior changes based on configuration.

## When to Use Each Approach

Use the full pattern (Example 1 or 3) when you need maximum flexibility, when creation logic is complex, or when you want to customize behavior in subclasses. Use static factory methods (Example 2) for simple cases with straightforward conditional creation. Use dynamic factories (Example 4) when the product type depends on runtime data or configuration.

All approaches share the core benefit of Factory Method: they decouple object creation from object usage, making your code more maintainable and extensible.