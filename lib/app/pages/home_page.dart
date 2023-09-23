import 'package:app_theme_light_dark/app/app_store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final AppStore appStore = Provider.of<AppStore>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RadioListTile<ThemeMode>(
              groupValue: appStore.themeMode,
              value: ThemeMode.system,
              title: const Text('System'),
              onChanged: (ThemeMode? value) {
                appStore.switchTheme(value);
              },
            ),
            RadioListTile<ThemeMode>(
              groupValue: appStore.themeMode,
              value: ThemeMode.light,
              title: const Text('Light'),
              // como o método onChanged tem a mesma assinatura, podemos fazer isso (tears off)
              onChanged: appStore.switchTheme,
            ),
            RadioListTile<ThemeMode>(
              groupValue: appStore.themeMode,
              value: ThemeMode.dark,
              title: const Text('Dark'),
              // como o método onChanged tem a mesma assinatura, podemos fazer isso
              onChanged: appStore.switchTheme,
            ),
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
