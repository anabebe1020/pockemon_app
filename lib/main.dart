import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pockemon_app/presentation/home_screen.dart';
import 'package:pockemon_app/provider/pockemon.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(initGqlProvider.notifier);
    return MaterialApp(
      title: 'Pockemon App',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        textTheme: GoogleFonts.montserratTextTheme(
          const TextTheme(
            bodyText1: TextStyle(color: Colors.blueGrey, fontSize: 24),
            bodyText2: TextStyle(color: Colors.blueGrey, fontSize: 18),
          ),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
