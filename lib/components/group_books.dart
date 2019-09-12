import 'package:flutter/material.dart';

class GroupBooks extends StatelessWidget {
  String title;

  GroupBooks(this.title);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 15, left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(title,style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 1),),
              Icon(Icons.chevron_right, color: Colors.blueAccent,),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 15),
          height: 250,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              _buildBook(first: true),
              _buildBook(),
              _buildBook(),
              _buildBook(),
              _buildBook()
            ],
          ),
        )
      ],
    );
  }

  _buildBook({first = false}) {
    return Container(
      width: 130,
      margin: EdgeInsets.only(left: first ? 15 : 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20)
            ),
            child: Image.network(
              'https://images.livrariasaraiva.com.br/imagemnet/imagem.aspx/?pro_id=9412204&qld=90&l=430&a=-1',
              width: 180,
              height: 180,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text('Imperfeito amor', style: TextStyle(color: Colors.black54),),
          ),
          Text('JFB Bauer', style: TextStyle(color: Colors.black54),),
        ],
      )
    );
  }
}
