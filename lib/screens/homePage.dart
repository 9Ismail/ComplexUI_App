import 'package:flutter/material.dart';
import 'package:my_wallet_app/helper/data.dart';

import '../widgets/cardsection.dart';
import '../widgets/expensesSection.dart';
import '../widgets/walletHeader.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primarycolor,
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            height: 120,
            child: WalletHeader(),
          ),
          Expanded(child: CardSection()),
          Expanded(child: ExpensesSection())
        ],
      ),
    );
  }
}
