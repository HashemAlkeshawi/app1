import 'dart:async';

class Teacher extends Comparable {
  late String fName;
  late String lName;
  late double salary;

  Teacher(this.fName, this.lName, this.salary);

  @override
  int compareTo(other) {
    // TODO: implement compareTo
    throw UnimplementedError();
  }
}
