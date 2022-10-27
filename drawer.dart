
import 'package:flutter/material.dart';
class AppDrawer extends StatefulWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          children: const [
            DrawerHeader(child: Text('drawer header')),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('page one'),

            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('page one'),

            ),
          ],
        )

    );
  }
}
