import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DrawerAplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
          child: Container(
            child: ListView(
              children: <Widget>[
                _headerDrawer(),
                ListTile(
                  title: Text('Help & feedback'),
                  leading: Icon(Icons.help),
                ),
                ListTile(
                  title: Text('Settings'),
                  leading: Icon(Icons.settings),
                ),
                ListTile(
                  title: Text('Dowloaded only'),
                  leading: Text(''),
                  trailing: CupertinoSwitch(value: false, onChanged: null),
                ),
                _footerDrawer()
              ],
            ),
          )
      ),
    );
  }

  _headerDrawer() {
    return Container(
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(color: Colors.black12,)
            )
        ),
        child: Row(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: NetworkImage('https://avatars0.githubusercontent.com/u/12954134?s=460&v=4'),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Hiléo Andersson',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                        'hileomsi@gmail.com',
                        style: TextStyle(color: Colors.black54)
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  _footerDrawer() {
    return Container(
      decoration: BoxDecoration(
          border: Border(
              top: BorderSide(color: Colors.black12,)
          )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FlatButton(
            child: Text('Privacy Policy',
              style: TextStyle(fontSize: 12, color: Colors.black54),),
            onPressed: () {},
          ),
          FlatButton(
            child: Text('Terms of Service',
              style: TextStyle(fontSize: 12, color: Colors.black54),),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
