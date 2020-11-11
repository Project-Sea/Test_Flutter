import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _buildTop(),
        _buildMiddle(),
        _buildBottom(),
      ],
    );
  }

  Widget _buildTop() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                Icon(
                  Icons.local_taxi,
                  size: 40,
                ),
                Text('택시'),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(
                  Icons.local_taxi,
                  size: 40,
                ),
                Text('택시'),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(
                  Icons.local_taxi,
                  size: 40,
                ),
                Text('택시'),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(
                  Icons.local_taxi,
                  size: 40,
                ),
                Text('택시'),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                Icon(
                  Icons.local_taxi,
                  size: 40,
                ),
                Text('택시'),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(
                  Icons.local_taxi,
                  size: 40,
                ),
                Text('택시'),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(
                  Icons.local_taxi,
                  size: 40,
                ),
                Text('택시'),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(
                  Icons.local_taxi,
                  size: 40,
                ),
                Text('택시'),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildMiddle() {
    return Text('Middle');
  }

  Widget _buildBottom() {
    return Text('Bottom');
  }
}
