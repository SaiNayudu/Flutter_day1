import 'package:flutter/material.dart';

class MainCointainer extends StatelessWidget {
  const MainCointainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.sizeOf(context).height/4,
        width: MediaQuery.sizeOf(context).width/1,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Container(
            height: MediaQuery.sizeOf(context).height/4,
            width: MediaQuery.sizeOf(context).width/1.5,
            // color: Colors.red,
            child: Column(
              children: [
                MainCointer_TextBoxes(),
                SizedBox(height: 18,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Buttons(
                        TextMsg: 'View Pack',
                        onTap: () {},
                        color: Colors.white,
                        border: Border.all(width: 1.0,color: Colors.orange),
                        selectionColor: Colors.white,
                      ),
                      SizedBox(width: 12,),
                      Buttons(
                        TextMsg: 'Recharge',
                        onTap: () {},
                        color: Colors.orange,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}


class Buttons extends StatelessWidget {
  final Color? color;
  final BoxBorder? border;
  final Color? selectionColor;
  final void Function()? onTap;
  final String TextMsg;
  const Buttons({super.key,this.color,this.border,this.selectionColor,required this.onTap,required this.TextMsg});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 35,
        width: 100,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(25),
          border: border,
        ),
        child: Center(child: Text(TextMsg,selectionColor: selectionColor,),),
      ),
    );
  }
}


class MainCointer_Icon extends StatelessWidget {
  const MainCointer_Icon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        // color: Colors.grey,
      ),
      child: Icon(Icons.wifi,size: 35,),
    );
  }
}

class MainCointainer_Textright extends StatelessWidget {
  const MainCointainer_Textright({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        children: [
          Row(
            children: [
              Text('0',style: TextStyle(fontSize: 28),),
              Text('pack',style: TextStyle(fontSize: 15),),
            ],
          ),
          Text('Expired',style: TextStyle(
            fontSize: 12,
            color: Colors.red,
          ),)
        ],
      ),
    );
  }
}


class MainCointer_TextBoxes extends StatelessWidget {
  const MainCointer_TextBoxes({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(

        height: MediaQuery.sizeOf(context).height/10,
        width: MediaQuery.sizeOf(context).width/2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MainCointer_Icon(),
            SizedBox(height: 15,width: 50,),
            MainCointainer_Textright(),
          ],
        ),
      ),
    );
  }
}


class Banners extends StatelessWidget {
  const Banners({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.sizeOf(context).height/4,
        width: MediaQuery.sizeOf(context).width/1,
        decoration: BoxDecoration(
          color: Colors.lightBlueAccent.shade100,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            // color: Colors.black,
            height: MediaQuery.sizeOf(context).height/4,
            width: MediaQuery.sizeOf(context).width/1,
            child: Row(
              children: [
                TextCoin_Banner()
              ],
            )
          ),
        ),
      ),
    );
  }
}


class TextCoin_Banner extends StatelessWidget {
  const TextCoin_Banner({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Row(
            children: [
              Text('App Exclusive Offer',style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                color: Colors.black87

              ),),
            ],
          ),
        ),
        Row(
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: Text('Applicable on recharges above Rs. 249.',style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                    color: Colors.black87
                ),),
            ),
          ],
        ),
        Row(
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: Text('Check Now >> '),
            ),
          ],
        ),Row(
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: Text('T&C apply'),
            ),
          ],
        ),
      ],
    );
  }
}



class QuickActions extends StatelessWidget {
  const QuickActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.sizeOf(context).height / 3,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Quick Actions',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Expanded(
              child: QuickAccessIconsGrid(),
            ),
          ],
        ),
      ),
    );
  }
}

class QuickAccessIconsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> actions = [
      {"icon": Icons.mobile_screen_share_outlined, "label": "Recharge"},
      {"icon": Icons.paypal, "label": "Pay Bill"},
      {"icon": Icons.settings_cell_outlined, "label": "Lanline"},
      {"icon": Icons.wifi, "label": "Book Fiber"},
      {"icon": Icons.sim_card_outlined, "label": "Upgrade 4g"},
      {"icon": Icons.sim_card_download, "label": "Choose No."},
      {"icon": Icons.do_disturb_alt_rounded, "label": "DND"},
      {"icon": Icons.videogame_asset_sharp, "label": "Games"},
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 45,
          mainAxisSpacing: 20,
        ),
        itemCount: actions.length,
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Icon(
                    actions[index]["icon"],
                    size: 30,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 5), // Spacing between icon and text
              Text(
                actions[index]["label"],
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          );
        },
      ),
    );
  }
}
