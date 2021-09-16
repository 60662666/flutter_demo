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
              title: ElevatedButton(
                child: Text('标题${products![index].description}'),
                onPressed: () {
                  _navagateToDetail(context);
                },
              ),
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

  _navagateToDetail(BuildContext context) async {
    final res = await Navigator.push(context,
        MaterialPageRoute(builder: (context) => AnotherProductDetail()));
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$res')));
  }
}

class AnotherProductDetail extends StatelessWidget {
  const AnotherProductDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('商品信息2')),
      body: Center(
        child: ElevatedButton(
          child: Text('返回'),
          onPressed: () {
            Navigator.pop(context, '我回来了');//
          },
        ),
      ),
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
        products: List.generate(
            20, (index) => Product('标题$index', '商品描述$index', '副标题$index'))),
  ));
}
