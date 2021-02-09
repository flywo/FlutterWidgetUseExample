import 'package:flutter/material.dart';

class CustomScrollViewDemo extends StatelessWidget {
  Widget _buildItem(BuildContext context, ProductItem product) {
    return Container(
      height: 100.0,
      margin: const EdgeInsets.only(bottom: 5.0),
      padding: const EdgeInsets.only(left: 10.0),
      color: Colors.blueGrey,
      child: Stack(
        alignment: AlignmentDirectional.centerStart,
        children: <Widget>[
          Positioned(
              right: 40.0,
              child: Card(
                child: Center(
                  child: Text(
                    product.name,
                    style: Theme.of(context).textTheme.title,
                    textAlign: TextAlign.center,
                  ),
                ),
              )),
          ClipRRect(
            child: SizedBox(
              width: 70.0,
              height: 70.0,
              child: Image.asset(
                product.asset,
                fit: BoxFit.cover,
              ),
            ),
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.0,
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            actions: <Widget>[
              // _buildAction(),
            ],
            title: Text('CustomScrollView'),
            backgroundColor: Theme.of(context).primaryColor,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              background:
              Image.asset('assets/images/food01.jpeg', fit: BoxFit.cover),
            ),
            pinned: true, //固定导航
          ),
          SliverFixedExtentList(
            delegate: SliverChildListDelegate(products.map((product) {
              return _buildItem(context, product);
            }).toList()),
            itemExtent: 120.0,
          )
        ],
      ),
    );
  }
}

class ProductItem {
  final String name;
  final String tag;
  final String asset;
  final int stock;
  final double price;

  ProductItem({
    this.name,
    this.tag,
    this.asset,
    this.stock,
    this.price,
  });
}

final List<ProductItem> products = [
  ProductItem(
      name: 'Bueno Chocolate',
      tag: '1',
      asset: 'assets/images/food01.jpeg',
      stock: 1,
      price: 71.0),
  ProductItem(
      name: 'Chocolate with berries',
      tag: '2',
      asset: 'assets/images/food02.jpeg',
      stock: 1,
      price: 71.0),
  ProductItem(
      name: 'Trumoo Candies',
      tag: '3',
      asset: 'assets/images/food03.jpeg',
      stock: 1,
      price: 71.0),
  ProductItem(
      name: 'Choco-coko',
      tag: '4',
      asset: 'assets/images/food04.jpeg',
      stock: 1,
      price: 71.0),
  ProductItem(
      name: 'Chocolate tree',
      tag: '5',
      asset: 'assets/images/food05.jpeg',
      stock: 1,
      price: 71.0),
  ProductItem(
      name: 'Chocolate',
      tag: '6',
      asset: 'assets/images/food06.jpeg',
      stock: 1,
      price: 71.0),
];
