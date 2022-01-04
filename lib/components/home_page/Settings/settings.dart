import 'package:flutter/material.dart';
import 'package:monest/components/home_page/Settings/setting_switch_body.dart';
import 'package:monest/components/home_page/Settings/setting_title.dart';
import 'package:monest/components/home_page/Settings/settings_body.dart';

Widget settings(BuildContext context, Function darkChange, Function wifiChange, bool dark, bool wifi) {
  const name = "Clément Bolin";
  const image = 'assets/images/perso.png';
  const email = 'clement.bolin@epitech.eu';
  return SingleChildScrollView(
    child: Center(
      child: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(image),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: Text(
              name,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Text(
              email,
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
                    'Modifier profile',
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
          settingTitle("Securité", 20),
          settingsBody(
            Icons.lock,
            "Changer son mot de passse",
            true,
          ),
          settingsBody(
            Icons.download,
            "Télécharger les données",
            true,
          ),
          settingsBody(
            Icons.delete,
            "Supprimer les données",
            true,
          ),
          settingTitle("PREFERENCES", 0),
          settingsBody(
            Icons.public,
            "Language",
            true,
          ),
          settingSwitchBody(
              "Mode Sombre", Icons.dark_mode_outlined, dark, darkChange),
          settingSwitchBody(
              "Téléchargement via Wi-Fi seulement", Icons.wifi, wifi, wifiChange),
          settingTitle("Connexion", 0),
          settingsBody(
            Icons.logout,
            "Déconnexion",
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