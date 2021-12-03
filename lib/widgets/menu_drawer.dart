import 'package:flutter/material.dart';

// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class MenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Container(),
            // decoration: BoxDecoration(
            //   image: DecorationImage(
            //     fit: BoxFit.cover,
            //     image: AssetImage('assets/logo.jpg'),
            //   ),
            // ),
          ),
          ListTile(
            leading: Icon(Icons.home, color: Colors.blue),
            title: Text('qr Reader'),
            onTap: () {
              Navigator.pushNamed(context, 'qr_reader');
            },
          ),
          ListTile(
            leading: Icon(Icons.message_outlined, color: Colors.blue),
            title: Text('pruebas'),
            onTap: () {
              Navigator.pushNamed(context, 'pruebas');
            },
          ),
          ListTile(
            leading: Icon(Icons.message_outlined, color: Colors.blue),
            title: Text('all'),
            onTap: () {
              Navigator.pushNamed(context, 'all');
            },
          ),

          // ListTile(
          //   leading: Icon(Icons.picture_in_picture_sharp, color: Colors.blue),
          //   title: Text('productos'),
          //   onTap: () {
          //     Navigator.pushNamed(context, 'productos');
          //   },
          // ),
          ListTile(
            leading: Icon(Icons.settings, color: Colors.blue),
            title: Text('login'),
            onTap: () {
              Navigator.pushNamed(context, 'login');
            },
          ),
          // ListTile(
          //   leading: Icon(Icons.logout, color: Colors.blue),
          //   title: Text('salir'),
          //   onTap: () async {
          //     SharedPreferences prefs = await SharedPreferences.getInstance();
          //     await prefs.setString('token', '');
          //     // storage.setItem("token", res.token);
          //     // var xx = storage.getItem('token');
          //     // print('navergar $xx');

          //     Navigator.pushReplacementNamed(context, "login");
          //   },
          // ),
        ],
      ),
    );
  }
}
