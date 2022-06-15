import 'ManagmentClass.dart';
import 'Person.dart';

enum Level { first, second, third, fourth, fifth }

class Student extends Person implements ManagementClass {
  //extends Person {
  late double gpa;
  late Level level;

  Student(String fName, String lName, Gender gender, int ageInYears, this.gpa,
      this.level)
      : super(fName, lName, gender, ageInYears);
  // : super(fName, lName, gender, ageInYears);

  String getStudentGpa() {
    if (gpa >= 90) {
      return "excellent";
    } else if (gpa >= 80) {
      return "very good";
    } else if (gpa >= 70) {
      return "good";
    } else if (gpa >= 60) {
      return "poor";
    } else {
      return "failed";
    }
  }

  Student.fromMap(Map<String, dynamic> student) : super.fromMap(student) {
    // fName = student["first_name"];
    // lName = student["last_name"];
    gpa = student["gpa"];
    level = student["level"] == 1
        ? Level.first
        : student["level"] == 2
            ? Level.second
            : student["level"] == 3
                ? Level.third
                : student["level"] == 4
                    ? Level.fourth
                    : Level.fifth;
  }

  // @override
  // Map<String, dynamic> toMap() {
  //   return {...super.toMap(), "gpa": gpa, "level": level};
  // }

  @override
  String? dummy1;

  @override
  String? dummy2;

  @override
  String? dummy3;

  // getHomework();
}
