import 'package:flutter/material.dart';

class DrawerCust extends StatelessWidget {
  const DrawerCust({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(0),
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
              color: Colors.green
          ),
          child: UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green,
            ),
            accountName: Text(
              'Andrew Neil Royo',
              style: TextStyle(
                  fontSize: 18.0
              ),
            ),
            accountEmail: Text(
                'a.n.royo@outlook.com'
            ),
            currentAccountPictureSize: Size.square(50),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 165, 255, 137),
              child: Text(
                'A',
                style: TextStyle(fontSize: 30.0, color: Colors.blue),
              ),
            ),
          ),
        ),
        ListTile(
          leading: const Icon(Icons.summarize),
          title: const Text('Summary Report'),
          onTap: () {
            Navigator.pushNamed(context, '/summaryReport');
          },
        ),
        ListTile(
          leading: const Icon(Icons.book),
          title: const Text('My Course'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.workspace_premium),
          title: const Text('Go Premium'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.video_label),
          title: const Text(' Saved Videos '),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.edit),
          title: const Text(' Edit Profile '),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.logout),
          title: const Text('LogOut'),
          onTap: () {
            Navigator.pushNamed(context, '/');
          },
        ),
      ],
    );
  }
}
