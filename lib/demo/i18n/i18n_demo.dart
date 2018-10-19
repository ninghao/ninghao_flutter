import 'package:flutter/material.dart';
// import 'package:ninghao_flutter/demo/i18n/map/ninghao_demo_localizations.dart';
import 'package:ninghao_flutter/demo/i18n/intl/ninghao_demo_localizations.dart';

class I18nDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Locale locale = Localizations.localeOf(context);
    
    return Scaffold(
      appBar: AppBar(
        title: Text('I18nDemo'),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(locale.toString()),
            Text(
              // Localizations.of(context, NinghaoDemoLocalizations).title,
              // NinghaoDemoLocalizations.of(context).title,
              NinghaoDemoLocalizations.of(context).greet('ninghao'),
              style: Theme.of(context).textTheme.title,
            )
          ],
        ),
      )
    );
  }
}