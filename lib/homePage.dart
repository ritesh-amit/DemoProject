import 'package:demo/dialogBoxAdd.dart';
import 'package:demo/utils/colors.dart';
import 'package:demo/utils/sizeConfig.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    List names = [
      'Lotte Choco Pie',
      'Dairy Milk',
      'Milk Packet',
      'Sugar Packet'
    ];
    List colors = ['Red', 'Purple', 'White', 'Brown'];
    List prices = ['200', '50', '25', '400'];
    List discounts = ['10', '20', '7', '9'];
    List inventory = ['70', '55', '99', '105'];
    List images = [
      "https://www.lotteindia.com/images/choco-pause-button-img.png",
      "https://www.vhv.rs/dpng/d/38-381391_dairy-milk-silk-chocolate-price-hd-png-download.png",
      "https://www.vhv.rs/dpng/d/9-98222_milk-packet-hd-png-download.png",
      "https://www.aashirvaad.com/img/multigrains/MG_FOP.png",
    ];
    return Scaffold(
      drawer: Drawer(
        backgroundColor: primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Demo App for IIIT Surat",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.italic,
                color: Colors.white,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        tooltip: "Add item to the cart",
        onPressed: () {
          dialogBoxAdd(context);
        },
        backgroundColor: secondaryColor,
        child: Icon(Icons.add, color: Colors.white),
      ),
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(
          "Home",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Text(
            "Item List",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.italic,
            ),
          ),
          Expanded(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  elevation: 2,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Name: ",
                                  style: TextStyle(
                                    fontSize: 12,
                                    letterSpacing: 0.6,
                                    color: Colors.grey[700],
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  names[index],
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 7),
                            Row(
                              children: [
                                Text(
                                  "Color: ",
                                  style: TextStyle(
                                    fontSize: 12,
                                    letterSpacing: 0.6,
                                    color: Colors.grey[700],
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  colors[index],
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 7),
                            Row(
                              children: [
                                Text(
                                  "Price: ",
                                  style: TextStyle(
                                    fontSize: 12,
                                    letterSpacing: 0.6,
                                    color: Colors.grey[700],
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  "\u20b9 ${prices[index]}",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 7),
                            Row(
                              children: [
                                Text(
                                  "Discount: ",
                                  style: TextStyle(
                                    fontSize: 12,
                                    letterSpacing: 0.6,
                                    color: Colors.grey[700],
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  "${discounts[index]}%",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 7),
                            Row(
                              children: [
                                Text(
                                  "Inventory: ",
                                  style: TextStyle(
                                    fontSize: 12,
                                    letterSpacing: 0.6,
                                    color: Colors.grey[700],
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  inventory[index] + " units",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Spacer(),
                        Image.network(
                          images[index],
                          width: 100,
                          height: 100,
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
