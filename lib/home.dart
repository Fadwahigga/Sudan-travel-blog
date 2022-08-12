import 'package:flutter/material.dart';
import 'package:travel_ui/model/city.dart';
import 'package:travel_ui/model/mostP.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.menu,
              color: Colors.black,
              size: 30,
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Text(
              "Sudan Blog",
              style: TextStyle(fontSize: 36),
            ),
          ),
          Expanded(flex: 2, child: City()),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Most Popular",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "View All",
                  style: TextStyle(fontSize: 16, color: Colors.deepOrange),
                )
              ],
            ),
          ),
          Expanded(flex: 1, child: MostPopular()),
        ],
      ),
    );
  }
}
