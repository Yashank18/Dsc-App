import 'package:flutter/material.dart';
void main() => runApp(new NavDrawer());
class NavDrawer extends StatelessWidget {
  const NavDrawer({Key key}):super(key: key);

 @override
Widget build(BuildContext context) {
      final DrawerHeader = UserAccountsDrawerHeader(
        accountName: Text('User Name'),
        accountEmail: Text('User.name@email.com'),
        currentAccountPicture: CircleAvatar(
          child: FlutterLogo(size: 44.0,),
          backgroundColor: Colors.pink,
        ),
      );
      final drawerItems = ListView(
        children: <Widget>[
            DrawerHeader,
            ListTile(
              title: Text('Reminders'),
              
            ),
            ListTile(
              title: Text('Events'),
              
            ),
            ListTile(
              title: Text('Certificates'),
              
            ),
        ],
      );
      return Scaffold(
        appBar: AppBar(
          iconTheme: new IconThemeData(color: Colors.pink),
          backgroundColor: Colors.purple,
          title: Text('DSC Chitkara'),
        ),
        drawer: Drawer(
          child: drawerItems,
          
        ),
        
      );
}

}
class _newPage extends MaterialPageRoute<Null> {
  final int _id;
  _newPage(this._id)
      : super(builder: (BuildContext context){
          return Scaffold(
            appBar: AppBar(
              title: Text('Page $_id'),
              elevation: 1.0,
            ),
            body: Center(
              child: Text('Page $_id'),
            ),
          );
      });
}