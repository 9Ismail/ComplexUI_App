import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_wallet_app/helper/data.dart';
import 'package:my_wallet_app/widgets/cardDetails.dart';

class CardSection extends StatelessWidget {
  const CardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Card Selected',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            )),
        Expanded(
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              itemBuilder: (ctx, i) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 40.0,
                      sigmaY: 40.0,
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      margin:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          boxShadow: customShadow,
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                              width: 1.5,
                              color: Colors.white.withOpacity(0.2))),
                      child: Stack(
                        children: [
                          Positioned.fill(
                              top: 150,
                              bottom: -200,
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: customShadow,
                                  shape: BoxShape.circle,
                                  color: Colors.white38,
                                ),
                              )),
                          Positioned.fill(
                              left: -300,
                              top: -100,
                              bottom: -100,
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: customShadow,
                                  shape: BoxShape.circle,
                                  color: Colors.white38,
                                ),
                              )),
                          CardDetails(),
                        ],
                      ),
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }
}
