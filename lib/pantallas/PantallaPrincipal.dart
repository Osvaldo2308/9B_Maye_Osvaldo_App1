import 'package:flutter/material.dart';
import '/widgets/iconbuttons.dart';

// Importa las nuevas páginas
import 'home.dart';
import 'search.dart';
import 'add.dart';
import 'likes.dart';
import 'profile.dart';
import 'tyc.dart';
import 'formulario.dart';

class PantallaPrincipal extends StatefulWidget {
  const PantallaPrincipal({Key? key}) : super(key: key);

  @override
  _PantallaPrincipalState createState() => _PantallaPrincipalState();
}

class _PantallaPrincipalState extends State<PantallaPrincipal> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<BottomNavigationBarItem> _bottomNavItems = const [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.search),
      label: 'Search',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.add_box),
      label: 'Add',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.favorite),
      label: 'Likes',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'Profile',
    ),
  ];

  final List<Widget> _pages = const [
    HomeScreen(),
    SearchScreen(),
    AddScreen(),
    LikesScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Instagram'),
        backgroundColor: Colors.purple,
        actions: const [
          iconbuttons(),
          buttonicons(),
        ],
      ),
      body: Column(
        children: [
          Expanded(child: _pages[_selectedIndex]),
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const tyc()));
                }, child: const Text("Terminos y condiciones")),
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const formulario()));
                }, child: const Text("Formulario")),
              ],
            ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _bottomNavItems,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
