import 'package:flutter/material.dart';
import 'package:matule/layers/presentations/shared/ui/product_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class PopularScreen extends StatelessWidget {
  const PopularScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var widgets = <Widget>[];
    for (var i = 0; i <= 20; i++) widgets.add(ProductCard());
    return Scaffold(
        appBar: AppBar(
          title: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text('Популярное'),
                  )
                ],
              )
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(),
          child: GridView.count(
            crossAxisCount: 2,
            children: List.generate(100, (index) {
              return Center(
                child: ProductCard(),
              );
            }),
          ),
        ));
  }
}
