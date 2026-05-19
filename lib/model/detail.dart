import 'package:json_annotation/json_annotation.dart';
part 'detail.g.dart';

@JsonSerializable()
class CountryDetailModel {
  final List<String>? tld;
  final String? cca2;
  final String? ccn3;
  final String? cca3;
  final String? cioc;
  final bool? independent;
  final String? status;
  final bool? unMember;
  final Idd? idd;
  final List<String>? capital;
  final List<String>? altSpellings;
  final String? region;
  final String? subregion;
  final bool? landlocked;
  final int? area;
  final Maps? maps;
  final int? population;
  final String? fifa;
  final Car? car;
  final List<String>? timezones;
  final List<String>? continents;
  final String? flag;
  final Name? name;
  final Currencies? currencies;
  final Languages? languages;
  final List<double>? latlng;
  final Demonyms? demonyms;
  final Map<String, Translation>? translations;
  final Flags? flags;
  final CoatOfArms? coatOfArms;
  final String? startOfWeek;
  final CapitalInfo? capitalInfo;
  final PostalCode? postalCode;

  CountryDetailModel({
    this.tld,
    this.cca2,
    this.ccn3,
    this.cca3,
    this.cioc,
    this.independent,
    this.status,
    this.unMember,
    this.idd,
    this.capital,
    this.altSpellings,
    this.region,
    this.subregion,
    this.landlocked,
    this.area,
    this.maps,
    this.population,
    this.fifa,
    this.car,
    this.timezones,
    this.continents,
    this.flag,
    this.name,
    this.currencies,
    this.languages,
    this.latlng,
    this.demonyms,
    this.translations,
    this.flags,
    this.coatOfArms,
    this.startOfWeek,
    this.capitalInfo,
    this.postalCode,
  });
  factory CountryDetailModel.fromJson(Map<String, dynamic> json) =>
      _$CountryDetailModelFromJson(json);
  Map<String, dynamic> toJson() => _$CountryDetailModelToJson(this);
}

@JsonSerializable()
class CapitalInfo {
  final List<double>? latlng;

  CapitalInfo({this.latlng});
  factory CapitalInfo.fromJson(Map<String, dynamic> json) =>
      _$CapitalInfoFromJson(json);
  Map<String, dynamic> toJson() => _$CapitalInfoToJson(this);
}

@JsonSerializable()
class Car {
  final String? side;

  Car({this.side});
  factory Car.fromJson(Map<String, dynamic> json) => _$CarFromJson(json);
  Map<String, dynamic> toJson() => _$CarToJson(this);
}

@JsonSerializable()
class CoatOfArms {
  final String? png;
  final String? svg;

  CoatOfArms({this.png, this.svg});
  factory CoatOfArms.fromJson(Map<String, dynamic> json) =>
      _$CoatOfArmsFromJson(json);
  Map<String, dynamic> toJson() => _$CoatOfArmsToJson(this);
}

@JsonSerializable()
class Currencies {
  final Awg? awg;

  Currencies({this.awg});
  factory Currencies.fromJson(Map<String, dynamic> json) =>
      _$CurrenciesFromJson(json);
  Map<String, dynamic> toJson() => _$CurrenciesToJson(this);
}

@JsonSerializable()
class Awg {
  final String? symbol;
  final String? name;

  Awg({this.symbol, this.name});
  factory Awg.fromJson(Map<String, dynamic> json) => _$AwgFromJson(json);
  Map<String, dynamic> toJson() => _$AwgToJson(this);
}

@JsonSerializable()
class Demonyms {
  final Eng? eng;
  final Eng? fra;

  Demonyms({this.eng, this.fra});
  factory Demonyms.fromJson(Map<String, dynamic> json) =>
      _$DemonymsFromJson(json);
  Map<String, dynamic> toJson() => _$DemonymsToJson(this);
}

@JsonSerializable()
class Eng {
  final String? f;
  final String? m;

  Eng({this.f, this.m});
  factory Eng.fromJson(Map<String, dynamic> json) => _$EngFromJson(json);
  Map<String, dynamic> toJson() => _$EngToJson(this);
}

@JsonSerializable()
class Flags {
  final String? png;
  final String? svg;
  final String? alt;

  Flags({this.png, this.svg, this.alt});
  factory Flags.fromJson(Map<String, dynamic> json) => _$FlagsFromJson(json);
  Map<String, dynamic> toJson() => _$FlagsToJson(this);
}

@JsonSerializable()
class Idd {
  final String? root;
  final List<String>? suffixes;

  Idd({this.root, this.suffixes});
  factory Idd.fromJson(Map<String, dynamic> json) => _$IddFromJson(json);
  Map<String, dynamic> toJson() => _$IddToJson(this);
}

@JsonSerializable()
class Languages {
  final String? nld;
  final String? pap;

  Languages({this.nld, this.pap});
  factory Languages.fromJson(Map<String, dynamic> json) =>
      _$LanguagesFromJson(json);
  Map<String, dynamic> toJson() => _$LanguagesToJson(this);
}

@JsonSerializable()
class Maps {
  final String? googleMaps;
  final String? openStreetMaps;

  Maps({this.googleMaps, this.openStreetMaps});
  factory Maps.fromJson(Map<String, dynamic> json) => _$MapsFromJson(json);
  Map<String, dynamic> toJson() => _$MapsToJson(this);
}

@JsonSerializable()
class Name {
  final String? common;
  final String? official;
  final Map<String, Translation>? nativeName;

  Name({this.common, this.official, this.nativeName});
  factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);
  Map<String, dynamic> toJson() => _$NameToJson(this);
}

@JsonSerializable()
class Translation {
  final String? official;
  final String? common;

  Translation({this.official, this.common});
  factory Translation.fromJson(Map<String, dynamic> json) =>
      _$TranslationFromJson(json);
  Map<String, dynamic> toJson() => _$TranslationToJson(this);
}

@JsonSerializable()
class PostalCode {
  final dynamic format;
  final dynamic regex;

  PostalCode({this.format, this.regex});
  factory PostalCode.fromJson(Map<String, dynamic> json) =>
      _$PostalCodeFromJson(json);
  Map<String, dynamic> toJson() => _$PostalCodeToJson(this);
}
