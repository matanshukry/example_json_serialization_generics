import 'package:example/person.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data.freezed.dart';

part 'data.g.dart';

class MyData<T> {
  final T value;
  final bool preferred;

  MyData(this.value, this.preferred);
}

@freezed
class Profile with _$Profile {
  const factory Profile({
    required String key,

    @Default([])
    MyData<Person> data,
  }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
}

enum Fruit {
  orange,
  apple,
}

enum Cake {
  chocolateCake,
  orangeCake,
}
