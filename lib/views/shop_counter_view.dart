import 'package:flutter/material.dart';
import 'package:list_of_counters/constans/counter_list.dart';
import 'package:list_of_counters/widgets/counter_item_widget.dart';

class ShopCounterView extends StatelessWidget {
  const ShopCounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
        title: const Text(
          "لا تنسي ابدا ماذا تشتري",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.90,
                  width: MediaQuery.of(context).size.width * 1,
                  child: const Image(
                    image: AssetImage('assets/images/fruitts.png'),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.greenAccent,
              ),
              child: const Text(
                "مشترياتي",
                style: TextStyle(
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyPurchases(),
                  ),
                );
              },
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
      backgroundColor: const Color(0xFFCDC6C6FF),
    );
  }
}

class MyPurchases extends StatelessWidget {
  const MyPurchases({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        leading: const Icon(Icons.shopping_cart),
        centerTitle: true,
        title: const Text(
          "اليوم سوف اشتري  ",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return ListItem(counteritem: itemList[index]);
                },
                separatorBuilder: (context, index) => const SizedBox(
                  height: 5,
                ),
                itemCount: itemList.length,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xFFCDC6C6FF),
    );
  }
}
