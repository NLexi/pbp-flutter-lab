import 'package:flutter/material.dart';
import 'package:flutterlab/model/mywatchlistmodel.dart';
import 'package:flutterlab/page/mywatchlist.dart';
import 'package:flutterlab/main.dart';
import 'package:flutterlab/page/budget.dart';
import 'package:flutterlab/page/Form.dart';

class MyWatchListDetails extends StatelessWidget {
  final MyWatchlist movie;

  const MyWatchListDetails({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            // Adding clickable menu
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
                  MaterialPageRoute(
                      builder: (context) => const MyWatchlistPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                movie.fields.title,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            ListTile(
              leading: Text('Release Date: ${movie.fields.releaseDate}'),
              dense: true,
            ),
            ListTile(
              leading: Text('Rating: ${movie.fields.rating}/5'),
              dense: true,
            ),
            ListTile(
              leading: Text(
                  'Status: ${movie.fields.watched ? 'Watched' : 'Not Watched'}'),
              dense: true,
            ),
            ListTile(
              title: const Padding(
                padding: EdgeInsets.only(bottom: 7.5),
                child: Text('Review:'),
              ),
              dense: true,
              subtitle: Text(movie.fields.review),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.45),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: const EdgeInsets.all(5),
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Back'),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
