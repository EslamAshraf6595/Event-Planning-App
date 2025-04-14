import 'package:event_planning/ui/home/home_screen.dart';
import 'package:event_planning/ui/home/provider/language_provider.dart';
import 'package:event_planning/ui/introdction/intro_controle.dart';
import 'package:event_planning/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(ChangeNotifierProvider(
      create: (context) => LanguageProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var languageProvider = Provider.of<LanguageProvider>(context);
    return MaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darktTheme,
      // themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      initialRoute: IntroControle.routIntro,
      routes: {
        IntroControle.routIntro: (context) => IntroControle(),
        HomeScreen.routHome: (context) => HomeScreen(),
      },
      locale: Locale(languageProvider.currentLanguage),
    );
  }
}
