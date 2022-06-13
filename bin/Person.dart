enum Gender { male, female }

class Person {
  late String fName;
  late String lName;
  late Gender gender;
  late int ageInYears;

  int ageInMonths() {
    return ageInYears * 12;
  }

  Person(this.fName, this.lName, this.gender, this.ageInYears);

  Person.fromMap(Map<String, dynamic> map) {
    fName = map["first_name"];
    lName = map["last_name"];
    gender = map["isMale"] == true ? Gender.male : Gender.female;
    ageInYears = map["age"];
  }

  toMap() {
    return {
      "first_name": fName,
      "last_name": lName,
      "isMale": gender == Gender.male ? true : false,
      "age": ageInYears
    };
  }
}
