import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 10.0),
          child: Text(
            "Categorias",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          reverse: false,
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Row(
            children: [
              Container(
                constraints: BoxConstraints(
                    maxHeight: 100,
                    minHeight: 100,
                    minWidth: 100,
                    maxWidth: 100),
                margin: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/cake.jpg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.teal[600].withOpacity(0.1), BlendMode.xor),
                  ),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        color: Colors.grey.withOpacity(0.6),
                        offset: Offset(1.5, 1.8),
                        spreadRadius: 3)
                  ],
                ),
                child: Center(
                    child: Text("Doces",
                        style: TextStyle(color: Colors.white, fontSize: 18))),
              ),
              Container(
                constraints: BoxConstraints(
                    maxHeight: 100,
                    minHeight: 100,
                    minWidth: 100,
                    maxWidth: 100),
                margin: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/roupas.jpg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.teal[600].withOpacity(0.1), BlendMode.xor),
                  ),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        color: Colors.grey.withOpacity(0.6),
                        offset: Offset(1.5, 1.8),
                        spreadRadius: 3)
                  ],
                ),
                child: Center(
                    child: Text("Roupas",
                        style: TextStyle(color: Colors.white, fontSize: 18))),
              ),
              Container(
                constraints: BoxConstraints(
                    maxHeight: 100,
                    minHeight: 100,
                    minWidth: 100,
                    maxWidth: 100),
                margin: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/acessorios.jpg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.teal[600].withOpacity(0.1), BlendMode.xor),
                  ),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        color: Colors.grey.withOpacity(0.6),
                        offset: Offset(1.5, 1.8),
                        spreadRadius: 3)
                  ],
                ),
                child: Center(
                    child: Text("Acessorios",
                        style: TextStyle(color: Colors.white, fontSize: 18))),
              ),
              Container(
                constraints: BoxConstraints(
                    maxHeight: 100,
                    minHeight: 100,
                    minWidth: 100,
                    maxWidth: 100),
                margin: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/moveis.jpg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.teal[600].withOpacity(0.1), BlendMode.xor),
                  ),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        color: Colors.grey.withOpacity(0.6),
                        offset: Offset(1.5, 1.8),
                        spreadRadius: 3)
                  ],
                ),
                child: Center(
                    child: Text("Móveis",
                        style: TextStyle(color: Colors.white, fontSize: 18))),
              ),
            ],
          ),
        )
      ],
    );
  }
}
