import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layout Responsivo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ResponsiveLayout(),
    );
  }
}

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout Responsivo'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            // Layout para dispositivos pequenos (mobile)
            return const MobileLayout();
          } else {
            // Layout para dispositivos maiores (tablet ou desktop)
            return const DesktopLayout();
          }
        },
      ),
    );
  }
}

class MobileLayout extends StatelessWidget {
  const MobileLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.phone_android, size: 100, color: Colors.blue),
          SizedBox(height: 20),
          Text(
            'Este é um layout mobile!',
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.desktop_windows, size: 100, color: Colors.green),
          SizedBox(width: 20),
          Text(
            'Este é um layout desktop!',
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}