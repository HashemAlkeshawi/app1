import 'GeneralClass.dart';

class Human extends GeneralClass with GeneralClass2 {
  @override
  double? age2;

  @override
  bool? isMale2;

  @override
  String? name2;

  @override
  setAge2(int ageInMonths) {
    // TODO: implement setAge2
    throw UnimplementedError();
  }
}
