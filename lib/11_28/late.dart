class Person {
  late String name;

  void sayHello() {
    print('Hello, ${name}');
  }
}


void main() {
  Person person = Person();
  person.name = 'John';
  person.sayHello();
}