import 'package:restapi_integration/model/country_model.dart';
import 'package:restapi_integration/model/detail.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: 'https://restcountries.com/v3.1/')
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET('/all?fields=name,capital,currencies,cca2')
  Future<List<CountryModel>> getCountries();

  @GET('/name/{name}?fullText=true')
  Future<List<CountryDetailModel>> getCountryByName(@Path('name') String name);
}
