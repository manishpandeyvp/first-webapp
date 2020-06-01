import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'CODINGGYAAN \nWEBPAGE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 45.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Get Started',
                    style:
                        TextStyle(color: Colors.orangeAccent, fontSize: 25.0),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      Image(
        width: width / 1.5,
        image: NetworkImage(
            'https://img.pngio.com/team-png-of-someone-at-work-2480_2480.png'),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: pageChildren(constraints.biggest.width / 2),
          );
        } else
          return Column(
            children: pageChildren(constraints.biggest.width),
          );
      },
    );
  }
}
