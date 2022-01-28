import 'package:flutter/material.dart';

class FlutterNavigation extends StatefulWidget {
  const FlutterNavigation({Key? key}) : super(key: key);

  @override
  _FlutterNavigationState createState() => _FlutterNavigationState();
}

class _FlutterNavigationState extends State<FlutterNavigation> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const MainScreen(),
        '/catalog': (context) => const SecondScreen(),
        '/basket': (context) => const ThirdScreen(),
        '/setting': (context) => const FourthScreen(),
      },
    );
  }
}

Widget navDrawer(context) =>
    Drawer(
      child: ListView(
          padding: EdgeInsets.zero, children: [
        DrawerHeader(
          decoration: const BoxDecoration(
            color: Colors.lightBlue,
          ),
          child: SizedBox(
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50.0))
                  ),
                  child: Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Google-flutter-logo.svg/330px-Google-flutter-logo.svg.png'),
                ),
                const Text('Навигация во Flutter')
              ],
            ),
          ),
        ),
        ListTile(
          leading: const Icon(Icons.home),
          title: const Text('Главная'),
          onTap: () {
            //Navigator.pop(context);
            Navigator.pushNamed(context, '/');
          },
        ),
        ListTile(
          leading: const Icon(Icons.widgets),
          title: const Text('Каталог'),
          onTap: () {
            Navigator.pushNamed(context, '/catalog');
          },
        ),
        ListTile(
          leading: const Icon(Icons.shopping_bag_outlined),
          title: const Text('Корзина'),
          onTap: () {
            Navigator.pushNamed(context, '/basket');
          },
        ),
        const Divider(),
        const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text('Профиль'),
        ),
        ListTile(
          leading: const Icon(Icons.settings),
          title: const Text('Настройки'),
          onTap: () {
            Navigator.pushNamed(context, '/setting');
          },
        ),
      ]),
    );

//Главная
class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle =
    TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);
    return Scaffold(
        appBar: AppBar(
            actions: <Widget>[
              TextButton(onPressed: (){Navigator.pushNamed(context, '/catalog');},
                child: const Text('Каталог'),
                style: buttonStyle,),
              IconButton(onPressed: (){Navigator.pushNamed(context, '/basket');},
                  icon: const Icon(Icons.shopping_bag_outlined)),
              IconButton(onPressed: (){Navigator.pushNamed(context, '/setting');},
                  icon: const Icon(Icons.settings)),
            ],
            title: const Text('Главная')),
        drawer: navDrawer(context),
        body: const Center(
          child: Text('Главная страница'),
        )
    );
  }
}

//Каталог
class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle =
    TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);
    return Scaffold(
        appBar: AppBar(
            actions: <Widget>[
              TextButton(onPressed: (){Navigator.pushNamed(context, '/');},
                child: const Text('На главную'),
                style: buttonStyle,),
              IconButton(onPressed: (){Navigator.pushNamed(context, '/basket');},
                  icon: const Icon(Icons.shopping_bag_outlined)),
              IconButton(onPressed: (){Navigator.pushNamed(context, '/setting');},
                  icon: const Icon(Icons.settings)),
            ],
            title: const Text('Каталог')),
        drawer: navDrawer(context),
        body: const Center(
          child: Text('Каталог'),
        )
    );
  }
}

//Корзина
class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle =
    TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);
    return Scaffold(
        appBar: AppBar(
            actions: <Widget>[
              TextButton(onPressed: (){Navigator.pushNamed(context, '/');},
                child: const Text('На главную'),
                style: buttonStyle,),
              IconButton(onPressed: (){Navigator.pushNamed(context, '/catalog');},
                  icon: const Icon(Icons.widgets)),
              IconButton(onPressed: (){Navigator.pushNamed(context, '/setting');},
                  icon: const Icon(Icons.settings)),
            ],
            title: const Text('Корзина')),
        drawer: navDrawer(context),
        body: const Center(
          child: Text('Корзина'),
        )
    );
  }
}

//Настройки
class FourthScreen extends StatelessWidget {
  const FourthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle =
    TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);
    return Scaffold(
        appBar: AppBar(
            actions: <Widget>[
              TextButton(onPressed: (){Navigator.pushNamed(context, '/');},
                child: const Text('На главную'),
                style: buttonStyle,),
              IconButton(onPressed: (){Navigator.pushNamed(context, '/catalog');},
                  icon: const Icon(Icons.widgets)),
              IconButton(onPressed: (){Navigator.pushNamed(context, '/basket');},
                  icon: const Icon(Icons.shopping_bag_outlined)),
            ],
            title: const Text('Настройки')),
        drawer: navDrawer(context),
        body: const Center(
          child: Text('Настройки'),
        )
    );
  }
}