// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

var defaultBackgroundColor = Colors.blue.shade200;

var appBarColor = Colors.blue.shade300;


var myAppBar = AppBar(
  backgroundColor: appBarColor,
  title: const Text(''),
  centerTitle: false,
);

var drawerTextColor = const TextStyle(
  color: Colors.white,

);
var tilePadding = const EdgeInsets.only(left: 8.0, right: 8, top: 8);
var myDrawer = Drawer(
  backgroundColor: Colors.black,

  elevation: 0,
  child: Column(
    children: [
      UserAccountsDrawerHeader(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('../image/logo.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        accountName: const Text(
          'Sebastian Tovar',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        accountEmail: const Text(
          'Adidas',
          style: TextStyle(
            fontSize: 15,
            color: Colors.white,
          ),
        ),
        currentAccountPicture: CircleAvatar(
          backgroundColor: Colors.black,
          child: ClipOval(
            child: Image.asset('../image/messi.jfif',
              width: 90,
              height: 90,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      Padding(
          padding: tilePadding,
        child: ListTile(
          leading: const Icon(Icons.home), iconColor: Colors.blue,
          title: Text(
              'Inicio',
          style: drawerTextColor,
          ),
        ),
      ),
      const Divider(
        height: 2.0,
      ),
      Padding(
        padding: tilePadding,
        child: ListTile(
          leading: const Icon(Icons.settings), iconColor: Colors.blue,
          title: Text(
            'Configuracion',
            style: drawerTextColor,
          ),
        ),
      ),
      Padding(
        padding: tilePadding,
        child: ListTile(
          leading: const Icon(Icons.info), iconColor: Colors.blue,
          title: Text(
            'Informacion',
            style: drawerTextColor,
          ),
        ),
      ),
      Padding(
        padding: tilePadding,
        child: ListTile(
          leading: const Icon(Icons.logout), iconColor: Colors.blue,
          title: Text(
            'Salir',
            style: drawerTextColor,
          ),
        ),
      ),
    ],
  ),
);