import 'Person.dart';
import 'Student.dart';
import 'Teacher.dart';
import 'dummy_data.dart';

void main(List<String> arguments) {
  // print('Hello world!');

  Teacher teacher1 = Teacher("hashem", "qishawi", 0);
  Teacher teacher2 = Teacher("hashem", "qishawi", 0);

  print(teacher1 == teacher2);

  Person person = Person("Hashem", "Alkeshawi", Gender.male, 21);
  Person person2 = Person("Hashem", "Alkeshawi", Gender.male, 21);

  Student s1 =
      Student("Hashem", "Alkeshawi", Gender.male, 2, 82.4, Level.second);

  // print(person.fName + " " + person.lName + " " + person.ageInYears.toString());
  // print(s1.fName +
  //     " " +
  //     s1.lName +
  //     " " +
  //     s1.gpa.toString() +
  //     " " +
  //     s1.level.toString());

  // Person person3 = Person.fromMap(persons[2]);

  // List<Person> PersonsList = persons.map((e) => Person.fromMap(e)).toList();

  // Map<String, dynamic> m = PersonsList[2].toMap();

  List<Student> studentsList = students.map((e) => Student.fromMap(e)).toList();

  // print(studentsList[1].fName.toString());
}
