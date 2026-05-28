enum Skill { FLUTTER, DART, OTHER }

class Address {
  final String _street;
  final String _city;
  final String _zipCode;

  Address(this._street, this._city, this._zipCode);

  String get street => _street;
  String get city => _city;
  String get zipCode => _zipCode;

  @override
  String toString() {
    return '$_street, $_city, $_zipCode';
  }
}

class Employee {
  final String _name;
  final double _baseSalary;
  final List<Skill> _skills;
  final Address _address;
  final int _yearsOfExperience;

  Employee(
    this._name,
    this._baseSalary,
    this._skills,
    this._address,
    this._yearsOfExperience,
  );

  Employee.mobileDeveloper(String name, Address address, int yearsOfExperience)
    : _name = name,
      _baseSalary = 40000,
      _skills = [Skill.FLUTTER, Skill.DART],
      _address = address,
      _yearsOfExperience = yearsOfExperience;

  String get name => _name;
  double get baseSalary => _baseSalary;
  List<Skill> get skills => _skills;
  Address get address => _address;
  int get yearsOfExperience => _yearsOfExperience;

  double computeSalary() {
    double salary = 40000;
    salary += _yearsOfExperience * 2000;

    for (var s in _skills) {
      switch (s) {
        case Skill.FLUTTER:
          salary += 5000;
          break;
        case Skill.DART:
          salary += 3000;
          break;
        case Skill.OTHER:
          salary += 1000;
          break;
      }
    }

    return salary;
  }

  void printDetails() {
    print('Employee: $_name');
    print('Address: $_address');
    print('Experience: $_yearsOfExperience years');
    print('Skills: $_skills');
    print('Computed Salary: \$${computeSalary()}');
    print("");
  }
}

void main() {
  var emp1 = Employee(
    'Sokea',
    40000,
    [Skill.DART],
    Address("Street 123", "Phnom penh", "123"),
    2,
  );
  emp1.printDetails();

  var emp2 = Employee.mobileDeveloper(
    'Ronan',
    Address("Street 456", "Phnom penh", "456"),
    10,
  );
  emp2.printDetails();
}
