import 'singleton_example.dart';

void main() async {
  SingletonExample singletonExample = SingletonExample();

  print('=== Example 1: Basic Singleton ===');
  singletonExample.exampleBasicSingleton();

  print('\n=== Example 2: Factory Singleton ===');
  singletonExample.exampleFactorySingleton();

  print('\n=== Example 3: Flutter Singleton ===');
  await (singletonExample.exampleFlutterSingleton());

  print('\n=== Example 4: Eager Singleton ===');
  singletonExample.exampleEagerSingleton();
}
