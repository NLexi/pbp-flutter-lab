import 'package:flutter/material.dart';
import 'package:flutterlab/model/mywatchlistmodel.dart';
import 'package:flutterlab/page/watchlistdetails.dart';
import 'package:flutterlab/main.dart';
import 'package:flutterlab/page/budget.dart';
import 'package:flutterlab/page/Form.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MyWatchlistPage extends StatefulWidget {
  const MyWatchlistPage({super.key});

  @override
  State<MyWatchlistPage> createState() => _MyWatchlistState();
}

class _MyWatchlistState extends State<MyWatchlistPage> {
  Future<List<MyWatchlist>> fetchWatchlist() async {
    var url = Uri.parse('https://pbp2022-katalog.herokuapp.com/mywatchlist/json/');
    var response = await http.get(
      url,
      headers: {
        "Access-Control-Allow-Origin": "*",
        "Content-Type": "application/json",
      },
    );
    var data = jsonDecode(utf8.decode(response.bodyBytes));
    List<MyWatchlist> listMyWatchlist = [];
    for (var d in data) {
      if (d != null) {
        listMyWatchlist.add(MyWatchlist.fromJson(d));
      }
    }
    return listMyWatchlist;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Watchlist'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            // Adding clickable menu
            Ink(
              color: Colors.blue,
              child: const ListTile(
                title: Text(''),
              ),
            ),
            ListTile(
              title: const Text('counter_7'),
              onTap: () {
                // Routing the menu to the main page
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                );
              },
            ),
            ListTile(
              title: const Text('Add Budget Info'),
              onTap: () {
                // Routing the menu to the form page
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyFormPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Budget Data'),
              onTap: () {
                // Routing the menu to the form page
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyBudgetData()),
                );
              },
            ),
            ListTile(
              title: const Text('My Watchlist'),
              onTap: () {
                // Routing the menu to the form page
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyWatchlistPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: FutureBuilder(
        future: fetchWatchlist(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          } else {
            if (!snapshot.hasData) {
              return Column(
                children: const [
                  Text(
                    "My Watchlist is empty :(",
                    style: TextStyle(
                        color: Color(0xff59A5D8),
                        fontSize: 20),
                  ),
                  SizedBox(height: 8),
                ],
              );
            } else {
              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (_, index)=> Container(
                    margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        color:Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black,
                              blurRadius: 2.0
                          )
                        ]
                    ),
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  MyWatchListDetails(
                                    movie: snapshot.data![index],
                                  ),
                            ));
                      },
                      title:
                      Text(
                        snapshot.data![index].fields.title,
                        style: const TextStyle(fontWeight: FontWeight.bold)
                      ),
                  ),
                ),
              );
            }
          }
        }
      ),
    );
  }
}