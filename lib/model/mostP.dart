// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:travel_ui/model/travel.dart';

class MostPopular extends StatelessWidget {
  MostPopular({Key? key}) : super(key: key);
  final _list = Travel.genarateMostPopular();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) {
            var trevel = _list[index];
            return GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed("cityd");
              },
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      trevel.url!,
                      width: 140,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 15,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Material(
                          color: Colors.transparent,
                          child: Text(
                            trevel.location!,
                            style: const TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Material(
                          color: Colors.transparent,
                          child: Text(
                            trevel.name!,
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: 15,
            );
          },
          itemCount: _list.length),
    );
  }
}
