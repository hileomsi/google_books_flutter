import 'package:flutter/material.dart';
import 'package:google_books_flutter/components/drawer.dart';
import 'package:google_books_flutter/components/group_books.dart';
import 'package:google_books_flutter/pages/search.dart';
import 'package:outline_material_icons/outline_material_icons.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current = 0;

  _setCurrent(index) {
    setState(() {
      _current = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: _buildTitle(),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search, color: Colors.black), onPressed: () {
            _navigateSearch();
          }),
        ],
      ),
      drawer: DrawerAplication(),
      body: _buildBody(),

      bottomNavigationBar: BottomNavigationBar(
          elevation: 3,
          currentIndex: _current,
          fixedColor: Colors.blueAccent,
          items: [
            BottomNavigationBarItem(
              icon: Icon(OMIcons.home,),
              title: Text('Home', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
            ),
            BottomNavigationBarItem(
                icon: Icon(OMIcons.libraryBooks),
                title: Text('Library', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)
            ),
          ],
        onTap: (index) {
            _setCurrent(index);
        },
      ),
    );
  }


  _buildTitle() {
    if(_current == 0) {
      return Text('Books');
    }
    return Text('Library');
  }

  _buildBody() {
    if(_current == 0) {
      return Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            GroupBooks('Ebooks for you'),
            GroupBooks('Top-seling eBooks'),
          ],
        ),
      );
    }

    return Container(
      color: Colors.white,
      child: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(15),
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: <Widget>[
            _buildBook(),
            _buildBook(),
            _buildBook(),
            _buildBook(),
            _buildBook(),
            _buildBook(),
            _buildBook(),
            _buildBook(),
            _buildBook(),
          ],
      )
    );
  }

  _buildBook() {
     return Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20)
            ),
            child: Image.network(
              'https://images.livrariasaraiva.com.br/imagemnet/imagem.aspx/?pro_id=9412204&qld=90&l=430&a=-1',
              width: 120,
              height: 120,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text('Imperfeito amor', style: TextStyle(color: Colors.black54),),
          ),
          Text('JFB Bauer', style: TextStyle(color: Colors.black54),),
        ],
      );
  }

  _navigateSearch() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return SearchPage();
    }));
  }
}

