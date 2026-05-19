import 'package:json_annotation/json_annotation.dart';

part 'country_model.g.dart';

@JsonSerializable()
class CountryModel {
  final Name name;
  final Map<String, Currency> currencies;
  final String cca2;
  final List<String> capital;

  CountryModel({
    required this.name,
    required this.currencies,
    required this.cca2,
    required this.capital,
  });
  factory CountryModel.fromJson(Map<String, dynamic> json) =>
      _$CountryModelFromJson(json);
}

@JsonSerializable()
class Name {
  final String common;
  final String official;
  final Map<String, NativeName> nativeName;

  Name({
    required this.common,
    required this.official,
    required this.nativeName,
  });
  factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);
}

@JsonSerializable()
class NativeName {
  final String official;
  final String common;

  NativeName({required this.official, required this.common});
  factory NativeName.fromJson(Map<String, dynamic> json) =>
      _$NativeNameFromJson(json);
}

@JsonSerializable()
class Currency {
  final String name;
  final String symbol;

  Currency({required this.name, required this.symbol});
  factory Currency.fromJson(Map<String, dynamic> json) =>
      _$CurrencyFromJson(json);
}
