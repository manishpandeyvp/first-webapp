import 'package:flutter/material.dart';

class MakeNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavBar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopNavBar();
        } else
          return MobileNavBar();
      },
    );
  }
}

class DesktopNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              'CodingGyan',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0),
            ),
          ),
          Row(
            children: [
              Text(
                'Home',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              SizedBox(
                width: 30.0,
              ),
              Text(
                'About US',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              SizedBox(
                width: 30.0,
              ),
              Text(
                'Youtube',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              SizedBox(
                width: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  color: Colors.orange,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Get Started',
                      style: TextStyle(color: Colors.white, fontSize: 25.0),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class MobileNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            'CodingGyan',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40.0),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Center(
            child: Row(
              children: [
                Text(
                  'Home',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
                SizedBox(
                  width: 30.0,
                ),
                Text(
                  'About US',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
                SizedBox(
                  width: 30.0,
                ),
                Text(
                  'Youtube',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
                SizedBox(
                  width: 30.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(
                    color: Colors.orange,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Get Started',
                        style: TextStyle(color: Colors.white, fontSize: 25.0),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
