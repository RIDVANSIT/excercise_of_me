import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: topMenu(),
      body: Amount_Menu(),
      bottomNavigationBar: Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Image(image: AssetImage('assets/images/add_icon.png')),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Add Coin', style: TextStyle(color: Color(0xff07F8B5), fontSize:16 ),),
        )

      ]) ,
    );
  }











//top menu
  AppBar topMenu() {
    return AppBar(
      backgroundColor: Colors.black12,
      leading: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Image(image: AssetImage('assets/images/prfile_pict.png')),
      ),
      title: const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
         Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Good Morning',
            style: TextStyle(color: Colors.white, fontSize: 13),
          ),
          Text(
            'John Doe, William',
            style: TextStyle(color: Colors.white),
          )
        ]),
        Image(
            width: 24,
            height: 24,
            image: AssetImage('assets/images/notification.png')),
      ]),

      //bottom: PreferredSize(preferredSize:Size.square(1), child: Image.asset('assets/images/notification.png'))
    );
  }
}

class Amount_Menu extends StatelessWidget {
  const Amount_Menu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: Text(
              '\$25,901.417',
              style: TextStyle(fontSize: 55, color: Colors.white),
            )),
          ),
          Center(
              child: Text(
            'Portfolyo value',
            style: TextStyle(fontSize: 15, color: Colors.white),
          )),
          Center(
              child: Text(
            '\$5,901.417',
            style: TextStyle(fontSize: 15, color: Colors.green),
          )),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Wallet',
                style: TextStyle(fontSize: 20, color: Colors.white)),
          ),
          CoinMenu(),
          CoinMenu(),
          CoinMenu(),
          CoinMenu(),
          CoinMenu(),
          CoinMenu(),
        ],
      ),
    );
  }
}







class CoinMenu extends StatelessWidget {
  const CoinMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row( mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Image(
                    image: AssetImage('assets/images/bitcoin_icon.png')),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'BTC',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    Text(
                      'Bitcoin',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Image(image: AssetImage('assets/images/chart.png')),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '\$5.465,4',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  '+125.4',
                  style: TextStyle(color: Colors.green, fontSize: 15),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
