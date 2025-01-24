import 'package:flutter/material.dart';

void main() {
  runApp(const MiCard());
}

class MiCard extends StatelessWidget {
  const MiCard({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.lightBlue.shade300,
          appBar: AppBar(
            title: const Text("MiCard"),
            backgroundColor: Colors.amber.shade100,
            centerTitle: true,
          ),
          body: Center(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  CircleAvatar(
                    backgroundImage: AssetImage("images/avt.jpg"),
                    backgroundColor: Colors.transparent,
                    radius: 70,
                  ),
                  Text(
                      "Nguyễn Hữu Thịnh",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                      ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.person),
                      title: Text("Nguyễn Hữu Thịnh"),
                    ),
                  ),
                  Card(
                  child: ListTile(
                  leading: Icon(Icons.phone),
                  title: Text("+84 xxx xxx xxx"),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.mail),
                      title: Text("Gmail@gmail.com"),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


