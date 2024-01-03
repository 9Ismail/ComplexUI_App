import 'package:flutter/material.dart';
import 'package:my_wallet_app/helper/data.dart';

class WalletHeader extends StatelessWidget {
  const WalletHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Ismail's Wallet",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                boxShadow: customShadow,
                color: primarycolor,
                shape: BoxShape.circle),
            child: Stack(
              children: [
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.deepOrange, shape: BoxShape.circle),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                        color: primarycolor, shape: BoxShape.circle),
                  ),
                ),
                Center(
                  child: Icon(
                    Icons.notifications,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
