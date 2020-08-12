import 'package:flutter/material.dart';
import 'package:todoflutter/src/page/productDetails.dart';

class ListItem extends StatelessWidget {
  final String tag;

  const ListItem({Key key, this.tag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ProductDetail(
            tag: tag,
          ),
        ));
      },
      title: Text("Carro"),
      subtitle: Text("R\$7000,00"),
      leading: Hero(
          tag: tag,
          child: Image.network(
              "https://s2.glbimg.com/JMEgHotm57qsaD3uBVjDHPJdyno=/620x413/e.glbimg.com/og/ed/f/original/2020/03/20/novo_tracker_1.jpg")),
      trailing: IconButton(
        icon: Icon(Icons.shopping_basket),
        color: Theme.of(context).accentColor,
        onPressed: () {},
      ),
    );
  }
}
