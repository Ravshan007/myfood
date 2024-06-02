import 'package:flutter/material.dart';

class MyDesriptionBox extends StatelessWidget {
  const MyDesriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    var myPrimaryTextStyle =
        TextStyle(color: Theme.of(context).colorScheme.inversePrimary);
    var mySecondaryTextStyle =
    TextStyle(color: Theme.of(context).colorScheme.primary);


    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.secondary),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.only(left: 25, top: 25, right: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //delivery fee/price
          Column(
            children: [
              Text("\$0.50", style: myPrimaryTextStyle,),
              Text("Delivery fee", style: mySecondaryTextStyle,),
            ],
          ),
          
          //delivery time
          Column(
            children: [
              Text("25-30 min", style: myPrimaryTextStyle,),
              Text("Delivery time", style: mySecondaryTextStyle,)
            ],
          )
        ],
      ),
    );
  }
}