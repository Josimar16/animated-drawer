import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.teal[600],
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/images/img1.jpg'),
            fit: BoxFit.cover,
            colorFilter:
                ColorFilter.mode(Colors.white.withOpacity(0.6), BlendMode.xor),
          )
              // gradient: LinearGradient(
              //   begin: Alignment.center,
              //   end: Alignment.bottomCenter,
              //   colors: [
              //     Color(0xFF00897B),
              //     Color(0x0F00897B),
              //   ],
              // ),
              ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors
                              .white, //                   <--- border color
                          width: 2.0,
                        ),
                        image: DecorationImage(
                          image: AssetImage('assets/images/icon.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      constraints: BoxConstraints(maxHeight: 55, maxWidth: 55),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Tony Stark",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "tony@mail.com",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      )
                    ],
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 150),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white.withOpacity(0.4),
                      ),
                      child: ListTile(
                        leading: FlatButton.icon(
                          icon: Icon(
                            Icons.home,
                            color: Colors.white,
                          ),
                          label: Text(
                            "Início",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {},
                        ),
                        onTap: () {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 150),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        // color: Colors.white.withOpacity(0.4),
                      ),
                      child: ListTile(
                        leading: FlatButton.icon(
                          icon: Icon(
                            Icons.account_circle,
                            color: Colors.white,
                          ),
                          label: Text(
                            "Perfil",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {},
                        ),
                        onTap: () {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 150),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        // color: Colors.white.withOpacity(0.4),
                      ),
                      child: ListTile(
                        leading: FlatButton.icon(
                          icon: Icon(
                            Icons.room_service,
                            color: Colors.white,
                          ),
                          label: Text(
                            "Pedidos",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {},
                        ),
                        onTap: () {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 150),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        // color: Colors.white.withOpacity(0.4),
                      ),
                      child: ListTile(
                        leading: FlatButton.icon(
                          icon: Icon(
                            Icons.shopping_cart,
                            color: Colors.white,
                          ),
                          label: Text(
                            "Carrinho",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {},
                        ),
                        onTap: () {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 150),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        // color: Colors.white.withOpacity(0.4),
                      ),
                      child: ListTile(
                        leading: FlatButton.icon(
                          icon: Icon(
                            Icons.chat,
                            color: Colors.white,
                          ),
                          label: Text(
                            "Chat online",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {},
                        ),
                        onTap: () {},
                      ),
                    ),
                  ),
                  SizedBox(height: 50)
                ],
              ),
              Row(
                children: [
                  FlatButton.icon(
                    icon: Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                    label: Text(
                      "Configurações",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {},
                  ),
                  Container(
                    color: Colors.white,
                    height: 20,
                    width: 1.5,
                  ),
                  FlatButton.icon(
                    icon: Icon(
                      Icons.exit_to_app,
                      color: Colors.white,
                    ),
                    label: Text(
                      "Sair",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
