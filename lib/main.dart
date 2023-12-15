import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyHomPage());
}

class MyHomPage extends StatefulWidget {
  const MyHomPage({super.key});

  @override
  State<MyHomPage> createState() => _MyHomPageState();
}

class _MyHomPageState extends State<MyHomPage> {

  String searchValue = '';
  final List<String> myList = ['Faisalabad', 'Lahore', 'Rawalpindi', 'Multan', 'Karachi', 'Islamabad', 'Murree', 'Quota', 'Gujrat', 'Chinot','Pashawar'];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: EasySearchBar(
                title: Text('SearchBar in Flutter'),
                backgroundColor: Colors.orangeAccent,
                onSearch: (value) => setState(() => searchValue = value),
                suggestions: myList
            ),

            body: Center(
              child: Container(
                width: 200,
                height: 200,
                  child: Center(child: Text('You Searched for: $searchValue'))

              ),
            )
        )
    );
  }
}
