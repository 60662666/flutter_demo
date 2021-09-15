import 'package:flutter/material.dart';

class Product {
  final String title;
  final String description;
  final String subtitle;
  Product(this.title, this.description, this.subtitle);
}

class ProductList extends StatelessWidget {
  final List<Product>? products;
  const ProductList({Key? key, @required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品列表'),
      ),
      body: ListView.builder(
          itemCount: products?.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text('头部${products![index].title}'),
              title: Text('标题${products![index].description}'),
              subtitle: Text('副标题${products![index].subtitle}'),
              onTap: () {
                //匿名函数，实现导航功能--类似于a标签
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ProductDetail(product: products![index])));
              },
            );
          }),
    );
  }
}

class ProductDetail extends StatelessWidget {
  final Product? product;
  ProductDetail({Key? key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('商品标题：${product?.title}')),
      body: Center(
        child: Text('商品描述：${product?.description}'),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: 'list加navi加数据传递及接收',
    home: ProductList(
        products:
            List.generate(20, (index) => Product('标题$index', '商品描述$index', '副标题$index'))),
  ));
}
