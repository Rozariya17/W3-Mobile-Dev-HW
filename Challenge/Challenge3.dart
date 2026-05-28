class Person {
  String firstname;
  String lastname;

  Person(this.firstname, this.lastname);

  String get fullname => "$firstname $lastname";
}

void main() {
  Person name = Person("Phoeurn", "Rozariya");

  print("The fullname is ${name.fullname}");
}
