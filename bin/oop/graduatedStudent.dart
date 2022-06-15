import 'Person.dart';
import 'Student.dart';

class GraduatedStudent extends Student {
  GraduatedStudent(String fName, String lName, Gender gender, int ageInYears,
      double gpa, Level level)
      : super(fName, lName, gender, ageInYears, gpa, level);

  GraduatedStudent.fromMap(Map<String, dynamic> map) : super.fromMap(map);
}
