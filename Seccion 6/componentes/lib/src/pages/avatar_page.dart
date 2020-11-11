import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: [
          Container(
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://pbs.twimg.com/profile_images/1298313988833452032/XgE1tlfz_400x400.jpg'),
              radius: 20.0,
            ),
            padding: EdgeInsets.all(5.0),
          ),
          Container(
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
            margin: EdgeInsets.only(right: 10.0),
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
          image: NetworkImage(
              'https://pbs.twimg.com/profile_images/1298313988833452032/XgE1tlfz_400x400.jpg'),
        ),
      ),
    );
  }
}
