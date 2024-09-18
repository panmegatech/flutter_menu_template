import 'package:flutter/material.dart';
import 'package:flutter_menu/home_screen.dart';
import 'package:flutter_menu/inbox_screen.dart';
import 'package:flutter_menu/orders_screen.dart';
import 'package:flutter_menu/profile_screen.dart';
import 'package:flutter_menu/widgets/panda_text.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MainAppState();
  }
}

int currentDrawerIndex = 1;
int currentBottomIndex = 0;

class _MainAppState extends State {
  final _screenBottom = const <Widget>[
    HomeScreen(),
    InboxScreen(),
    OrdersScreen(),
    ProfileScreen(),
  ];

  void setDrawerIndex(
    BuildContext context, {
    required int index,
  }) {
    print("drawer index: $index");
    setState(() {
      currentDrawerIndex = index;
    });

    Navigator.pop(context);
  }

  void setBottomIndex({
    required int index,
  }) {
    print("bottom index: $index");
    setState(() {
      currentBottomIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          title: const Text('Menu Template'),
          leading: Builder(builder: (context) {
            return IconButton(
                onPressed: () {
                  print('call drawer');
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(Icons.menu));
          }),
          actions: [
            PopupMenuButton(
              itemBuilder: (context) {
                return <PopupMenuEntry<String>>[
                  PopupMenuItem<String>(
                    value: 'one',
                    child: const Text(
                      'Option 1',
                    ),
                    onTap: () => print('press: Option 1'),
                  ),
                  PopupMenuItem<String>(
                    value: 'two',
                    onTap: () => print('press: Option 2'),
                    child: const Text('Option 2'),
                  ),
                ];
              },
              onSelected: (value) {
                print("onSelected: $value");
              },
            ),
          ],
        ),
        drawer: Builder(builder: (context) {
          return Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  decoration: const BoxDecoration(color: Colors.amber),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: const Icon(
                          Icons.account_circle,
                          size: 80,
                        ),
                      ),
                      const Text(
                        'ตัวอะไร ขอบตาดำ',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  selectedColor: Colors.black,
                  selected: currentDrawerIndex == 1,
                  title: PandaText(
                    'Items',
                    fontWeight: (currentDrawerIndex == 1)
                        ? FontWeight.bold
                        : FontWeight.normal,
                  ),
                  onTap: () {
                    setDrawerIndex(index: 1, context);
                  },
                ),
                ListTile(
                  selectedColor: Colors.black,
                  selected: currentDrawerIndex == 2,
                  title: PandaText(
                    'Favorites',
                    fontWeight: (currentDrawerIndex == 2)
                        ? FontWeight.bold
                        : FontWeight.normal,
                  ),
                  onTap: () {
                    setDrawerIndex(index: 2, context);
                  },
                ),
                ListTile(
                  selectedColor: Colors.black,
                  selected: currentDrawerIndex == 3,
                  title: PandaText('History',
                      fontWeight: (currentDrawerIndex == 3)
                          ? FontWeight.bold
                          : FontWeight.normal),
                  onTap: () {
                    setDrawerIndex(index: 3, context);
                  },
                ),
                ListTile(
                  selectedColor: Colors.black,
                  selected: currentDrawerIndex == 4,
                  title: PandaText('Search',
                      fontWeight: (currentDrawerIndex == 4)
                          ? FontWeight.bold
                          : FontWeight.normal),
                  onTap: () {
                    setDrawerIndex(index: 4, context);
                  },
                ),
              ],
            ),
          );
        }),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentBottomIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.amberAccent,
          selectedItemColor: Colors.black,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble),
              label: 'Inbox',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.view_list),
              label: 'Orders',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: 'Profile',
            ),
          ],
          onTap: (value) {
            print('index: $value');
            setBottomIndex(index: value);
          },
        ),
        floatingActionButton: Builder(builder: (context) {
          return FloatingActionButton(
            backgroundColor: Colors.amberAccent,
            onPressed: () {
              print('floating btn pressed');
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: const Text(
                        'Lorem ipsum dolor sit amet consectetur adipisicing elit.  modi cumque id deserunt. Error quia labore qui iusto?'),
                    icon: const Icon(Icons.add_a_photo),
                    title: const Text('Example AlertDialog'),
                    actions: [
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Confirm'))
                    ],
                  );
                },
              );
            },
            child: const Icon(Icons.add_shopping_cart_outlined),
          );
        }),
        body: _screenBottom.elementAtOrNull(currentBottomIndex) ??
            const Center(
              child: Text('404 Not found'),
            ),
      ),
    );
  }
}
