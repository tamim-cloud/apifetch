import 'package:apifetch/data/database/post_db.dart';
import 'package:apifetch/data/models/get_class.dart';
import 'package:flutter/material.dart';

class DataScreen extends StatefulWidget {
  const DataScreen({super.key});

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  PostDb datadb=PostDb();
  List<GetClass> result = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadpost();
  }

  void _loadpost() async {
    result = await datadb.rickAndMortyData();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data"),
        backgroundColor: Colors.pink,
        centerTitle: true,
      ),
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : result.isEmpty
              ? Center(
                  child: Text("No data Found"),
                )
              : ListView.builder(
                  itemCount: result.length,
                  itemBuilder: (context, index) => ListTile(
                    leading: Text("${result[index].id}"),
                    title: Text(result[index].title!),
                    subtitle: Text(result[index].body!),
                  ),
                ),
    );
  }
}
