import 'dart:async';

class Teacher {
  late String fName;
  late String lName;
  late double salary;

  Teacher(this.fName, this.lName, this.salary);

  @override
  bool operator ==(t) {
    return (t is Teacher &&
        t.fName == fName &&
        t.lName == lName &&
        t.salary == salary);
  }
}
