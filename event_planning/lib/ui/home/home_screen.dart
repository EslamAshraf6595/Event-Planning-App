import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const routHome = 'Home';

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        appBar: AppBar(
      title: Text(AppLocalizations.of(context)!.english),
      leading: Icon(Icons.arrow_back),
    ));
  }
}
