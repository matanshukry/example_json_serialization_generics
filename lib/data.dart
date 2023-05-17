import 'package:freezed_annotation/freezed_annotation.dart';

part 'data.freezed.dart';

part 'data.g.dart';

class MyData<T> {
  final T value;
  final bool preferred;

  MyData(this.value, this.preferred);
}

@freezed
class Profile with $Profile {
  const factory Profile({
    @Default([])
    MyData<Fruit> fruits,

    @Default([])
    MyData<Cake> cakes,
  }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) =>
      $ProfileFromJson(json);
}

enum Fruit {
  orange,
  apple,
}

enum Cake {
  chocolateCake,
  orangeCake,
}
