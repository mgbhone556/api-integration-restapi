import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:restapi_integration/api/api_service.dart';
import 'package:restapi_integration/model/detail.dart';
import 'package:get/get.dart';

class DetailScreen extends StatelessWidget {
  final ApiService apiService = Get.find();
  final String country_name;

  DetailScreen({super.key, required this.country_name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Country Detail')),
      body: FutureBuilder<List<CountryDetailModel>>(
        future: apiService.getCountryByName(country_name),

        builder: (context, snapshot) {
          if (snapshot.hasData) {
            CountryDetailModel detail = snapshot.data![0];
            return ListView(
              children: [
                CachedNetworkImage(
                  imageUrl: "https://flagsapi.com/${detail.cca2}/shiny/64.png",
                  width: 50,
                  height: 50,
                  placeholder: (context, url) =>
                      Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
                SizedBox(height: 8),
                Text('Country: ${detail.name?.common ?? 'N/A'}'),
                SizedBox(height: 8),
                Text(
                  'Capital: ${detail.capitalInfo?.latlng?.join(', ') ?? 'N/A'}',
                ),
                SizedBox(height: 8),
                Text('Population: ${detail.population}'),
                SizedBox(height: 8),
                Text('Region: ${detail.region}'),
                SizedBox(height: 8),
                Text('Subregion: ${detail.subregion}'),
                SizedBox(height: 8),
                Text('Area: ${detail.area} km²'),
                SizedBox(height: 8),
                Text('Languages: ${detail.languages?.nld ?? 'N/A'}'),
                SizedBox(height: 8),
                Text('Flag: ${detail.flags?.png ?? 'N/A'}'),
                SizedBox(height: 8),
                Text('Coat of Arms: ${detail.coatOfArms?.png ?? 'N/A'}'),
                SizedBox(height: 8),
                Text('Postal Code: ${detail.postalCode?.format ?? 'N/A'}'),
                SizedBox(height: 8),
                Text('Start of Week: ${detail.startOfWeek ?? 'N/A'}'),
                SizedBox(height: 8),
                Text('Timezones: ${detail.timezones?.join(', ') ?? 'N/A'}'),
                SizedBox(height: 8),
                Text('Continents: ${detail.continents?.join(', ') ?? 'N/A'}'),
                SizedBox(height: 8),
                Text('FIFA Code: ${detail.fifa ?? 'N/A'}'),
                SizedBox(height: 8),
                Text('Car Side: ${detail.car?.side ?? 'N/A'}'),
                SizedBox(height: 8),
              ],
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
}
