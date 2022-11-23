import 'package:flutter/material.dart';
import 'package:flutterlab/main.dart';
import 'package:flutterlab/page/Form.dart';
import 'package:flutterlab/page/mywatchlist.dart';
import '../datalist.dart' as datalist;

class MyBudgetData extends StatefulWidget {
  const MyBudgetData({super.key});

  @override
  State<MyBudgetData> createState() => _MyBudgetDataState();
}

class _MyBudgetDataState extends State<MyBudgetData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text("Budget Data"),
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
                  MaterialPageRoute(
                      builder: (context) => const MyWatchlistPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: datalist.data.length,
          itemBuilder: ((context, index) {
            return Padding(
                padding: const EdgeInsets.all(5.0),
                child: Material(
                  elevation: 2.0,
                  borderRadius: BorderRadius.circular(5.0),
                  child: ListTile(
                    title: Text(datalist.data[index].title),
                    subtitle: Text('Rp ${datalist.data[index].amount}'),
                    trailing: Text(datalist.data[index].budgetType),
                  ),
                ));
          }),
        ),
      ),
    );
  }
}
