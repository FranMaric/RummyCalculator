import 'package:flutter/material.dart';
import 'package:RummyCalculator/constants.dart';
import 'package:provider/provider.dart';
import 'package:RummyCalculator/database.dart';

class DeletePointsPopUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Provider.of<Data>(context).isDarkMode
          ? kInverseWhite
          : Color(0xff757575),
      child: Container(
        height: 120,
        decoration: BoxDecoration(
            color: Provider.of<Data>(context).isDarkMode
                ? Colors.black
                : Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(40.0),
                topLeft: Radius.circular(40.0))),
        child: Column(
          children: <Widget>[
            SizedBox(height: 10),
            Text(
              '${Provider.of<Data>(context).translations['want_to_delete']} ${Provider.of<Data>(context).translations['all_points']}?',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Provider.of<Data>(context).isDarkMode
                    ? Colors.white
                    : Colors.black54,
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Provider.of<Data>(context, listen: false)
                          .clearAllPoints();
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      height: 50,
                      margin: EdgeInsets.symmetric(horizontal: 20.0),
                      decoration: BoxDecoration(
                        color: Provider.of<Data>(context).isDarkMode
                            ? kInverseWhite
                            : kPadColor,
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      child: Center(
                        child: Text(
                          Provider.of<Data>(context).translations['yes'],
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Provider.of<Data>(context).isDarkMode
                                ? Colors.white
                                : Colors.black54,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      height: 50,
                      margin: EdgeInsets.symmetric(horizontal: 20.0),
                      decoration: BoxDecoration(
                        color: Provider.of<Data>(context).isDarkMode
                            ? kInverseWhite
                            : kPadColor,
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      child: Center(
                        child: Text(
                          Provider.of<Data>(context).translations['no'],
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Provider.of<Data>(context).isDarkMode
                                ? Colors.white
                                : Colors.black54,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
