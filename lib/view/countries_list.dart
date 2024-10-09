import 'package:flutter/material.dart';
import 'package:my_first_app/services/sates_services.dart';
import 'package:shimmer/shimmer.dart';

class CountriesListScreen extends StatefulWidget {
  const CountriesListScreen({super.key});

  @override
  State<CountriesListScreen> createState() => _CountriesListScreenState();
}

class _CountriesListScreenState extends State<CountriesListScreen> {
  TextEditingController searchController = TextEditingController();
  late Future<List<dynamic>> countriesFuture;

  @override
  void initState() {
    super.initState();
    SatesServices satesServices = SatesServices();
    countriesFuture = satesServices.countriesListApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: searchController,
                onChanged: (value) {
                  setState(() {}); 
                },
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                  hintText: "Search By Country Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ),
            ),
            Expanded(
              child: FutureBuilder<List<dynamic>>(
                future: countriesFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return _buildShimmer();
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return Center(child: Text('No countries found'));
                  } else {
                    return _buildCountryList(snapshot.data!);
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildShimmer() {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: Colors.grey.shade700,
          highlightColor: Colors.grey.shade100,
          child: ListTile(
            title: Container(height: 10, width: 100, color: Colors.white),
            subtitle: Container(height: 10, width: 70, color: Colors.white),
            leading: Container(height: 50, width: 50, color: Colors.white),
          ),
        );
      },
    );
  }

  Widget _buildCountryList(List<dynamic> countries) {
    return ListView.builder(
      itemCount: countries.length,
      itemBuilder: (context, index) {
        String name = countries[index]['country'];
        String cases = countries[index]['cases'].toString();
        String flagUrl = countries[index]['countryInfo']['flag'];

        if (searchController.text.isEmpty || name.toLowerCase().contains(searchController.text.toLowerCase())) {
          return ListTile(
            title: Text(name),
            subtitle: Text(cases),
            leading: Image(height: 50, width: 50, image: NetworkImage(flagUrl)),
          );
        }
        return Container();
      },
    );
  }
}
