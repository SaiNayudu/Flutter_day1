import 'package:flutter/material.dart';

import 'assets/Widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Good Morning, Sai'),backgroundColor: Colors.orange.shade400,),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.orange,
                  Colors.white,
                ],
              ),
            ),
          ),
          ListView(
            children: [
              MainCointainer(),
              SizedBox(height: 15,),
              Banners(),
              SizedBox(height: 15,),
              QuickActions(),

            ],
          ),
        ],
      )

    );
  }
}
