import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:permission_handler/permission_handler.dart';

import 'globals.dart';

/// [StatelessWidget] displaying information about Baseflow
class AppSettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: SingleChildScrollView(
          child: Padding(
            padding: defaultHorizontalPadding + defaultVerticalPadding,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset(
                    'res/images/poweredByBaseflowLogoLight@3x.png',
                    width: 250,
                    alignment: Alignment.centerLeft,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 24),
                ),
                _launcherRaisedButton(
                  'openAppSettings',
                  context,
                  openAppSettings,
                ),
                _launcherRaisedButton(
                  'openSystemAlertSetting',
                  context,
                  openSystemAlertSetting,
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 30),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _launcherRaisedButton(
      String text, BuildContext context, VoidCallback onPressed) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      margin: const EdgeInsets.only(top: 24.0),
      alignment: Alignment.center,
      child: SizedBox.expand(
        child: RaisedButton(
          textTheme: Theme.of(context).buttonTheme.textTheme,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          padding: const EdgeInsets.all(8),
          child: Text(text),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
