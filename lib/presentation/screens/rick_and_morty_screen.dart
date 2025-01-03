import 'package:apifetch/data/database/post_db.dart';
import 'package:apifetch/data/models/rick_and_morty.dart';
import 'package:flutter/material.dart';

class RickAndMortyScreen extends StatefulWidget {
  const RickAndMortyScreen({super.key});

  @override
  State<RickAndMortyScreen> createState() => _RickAndMortyScreenState();
}

class _RickAndMortyScreenState extends State<RickAndMortyScreen> {
  bool isLoading = true;
  PostDb rickAndMortyDb = PostDb();
  late RickAndMorty rickAndMorty;

  @override
  void initState() {
    super.initState();
    _loadpost();
  }

  void _loadpost() async {
    rickAndMorty = await rickAndMortyDb.postData();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rick And Morty Screen"),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : rickAndMorty.results!.isEmpty
              ? Center(
                  child: Text("Data not found"),
                )
              : ListView.builder(
                  itemCount: rickAndMorty.results!.length,
                  itemBuilder: (context, index) {
                    final object = rickAndMorty.results![index];
                    return Card(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage("${object.image}"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: Column(
                              spacing: 10,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${object.name}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Row(
                                  children: [
                                    Text("${object.status} - "),
                                    Text("${object.species}"),
                                  ],
                                ),
                                Text(
                                    "Last Known Location: ${object.location?.name}"),
                                Text("Fist Seen in: ${object.origin?.name}"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
    );
  }
}
