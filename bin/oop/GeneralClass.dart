class GeneralClass {
  String? name;
  bool? isMale;
  double? age;

  setAge(int ageInMonths) {
    age = ageInMonths / 12;
  }

  GeneralClass(this.age, this.isMale, this.name) {}
}

class GeneralClass2 {
  String? name2;
  bool? isMale2;
  double? age2;

  setAge2(int ageInMonths) {
    age2 = ageInMonths / 12;
  }
}
