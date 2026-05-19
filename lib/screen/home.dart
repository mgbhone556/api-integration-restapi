import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:restapi_integration/api/api_service.dart';
import 'package:dio/dio.dart';
import 'package:restapi_integration/model/country_model.dart';
import 'package:restapi_integration/screen/detail_screen.dart';

class Home extends StatelessWidget {
  ApiService apiService = ApiService(Dio());
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Countries List')),
      body: FutureBuilder(
        future: apiService.getCountries(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<CountryModel> country = snapshot.data!;
            return ListView.builder(
              itemCount: country.length,
              itemBuilder: (context, index) {
                return item(country[index], context);
              },
            );
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }

  Widget item(CountryModel country, context) {
    return ListTile(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              country_name: country.name.common,
              apiService: apiService,
            ),
          ),
        );
      },
      leading: CachedNetworkImage(
        imageUrl: "https://flagsapi.com/${country.cca2}/shiny/64.png",
        width: 50,
        height: 50,
        placeholder: (context, url) =>
            Center(child: CircularProgressIndicator()),
        errorWidget: (context, url, error) => Icon(Icons.error),
      ),

      title: Text(country.name.common),
      subtitle: Text(
        country.capital.isNotEmpty ? country.capital[0] : 'No Capital',
      ),
    );
  }
}
