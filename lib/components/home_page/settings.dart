import 'package:flutter/material.dart';

Widget settings(BuildContext context, Function darkChange, Function wifiChange,
    bool dark, bool wifi) {
  return SingleChildScrollView(
    child: Center(
      child: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/perso.png'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: Text(
              'Clément Bolin',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Text(
              'clement.bolin@epitech.eu',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: ElevatedButton(
              onPressed: () => {},
              style: ElevatedButton.styleFrom(
                primary: const Color(0xffff765b),
                minimumSize: const Size(180, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    'Edit Profile',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          settingTitle("SECURITY", 20),
          settingsBody(
            Icons.lock,
            "Change Password",
            true,
          ),
          settingsBody(
            Icons.download,
            "Download Data",
            true,
          ),
          settingsBody(
            Icons.delete,
            "Delete Data",
            true,
          ),
          settingTitle("PREFERENCES", 0),
          settingsBody(
            Icons.public,
            "Language",
            true,
          ),
          settingSwitchBody(
              "Dark Mode", Icons.dark_mode_outlined, dark, darkChange),
          settingSwitchBody(
              "Only Download via Wi-Fi", Icons.wifi, wifi, wifiChange),
          settingTitle("LOGIN", 0),
          settingsBody(
            Icons.logout,
            "Log Out",
            false,
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: Text(
              'Version 0.1.2',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

SwitchListTile settingSwitchBody(
    String name, IconData icon, bool value, Function funct) {
  return SwitchListTile(
    activeTrackColor: const Color(0xffff765b),
    activeColor: const Color(0xffff765b),
    inactiveTrackColor: Colors.grey,
    title: Text(
      name,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    ),
    value: value,
    onChanged: (bool value) {
      funct(value);
    },
    secondary: Icon(icon),
  );
}

ListTile settingsBody(IconData leadingIcon, String name, bool isArrow) {
  return ListTile(
    leading: Icon(
      leadingIcon,
      color: Colors.grey,
    ),
    title: Text(
      name,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    ),
    trailing: Icon(
      isArrow ? Icons.arrow_forward_ios_sharp : null,
      size: 20,
    ),
  );
}

Card settingTitle(String title, double top) {
  return Card(
    elevation: 0,
    color: const Color.fromARGB(246, 246, 246, 255),
    margin: EdgeInsets.fromLTRB(0, top, 0, 0),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 4, 0, 4),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
