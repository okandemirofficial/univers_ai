import 'package:flutter/material.dart';
import 'package:univers_ai/model/product_model.dart';
import 'package:univers_ai/model/view_model/card_content_view_model.dart';
import 'package:univers_ai/widgets/my_button.dart';

class CardContent extends StatefulWidget {
  const CardContent(
      {super.key,
      required this.title,
      required this.text,
      required this.products,
      required this.selectedProductsMap});
  final String title;
  final String text;
  final String selectedProductsMap;
  final List<ProductModel> products;

  @override
  State<CardContent> createState() => _CardContentState();
}
class _CardContentState extends CardContentViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Flexible(
            flex: 3,
            child: Container(
              margin:const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.only(left: 10, bottom: 20),
              height: double.infinity,
              child: SingleChildScrollView(
                child: Card(
                  child: Column(
                    children: [
                      Text(
                        widget.title,
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      Text(
                        widget.text,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: widget.products.length,
              itemBuilder: (context, index) {
                isCheckedMap.putIfAbsent(index, () => false);
                return ListTile(
                  title: Text(widget.products[index].name),
                  subtitle: Text('${widget.products[index].price}'),
                  trailing: Checkbox(
                    value: isCheckedMap[index] ?? false,
                    onChanged: (bool? value) {
                      setState(() {
                        isCheckedMap[index] = value ?? false;
                        updateTotalPrice();
                      });
                    },
                  ),
                );
              },
            ),
          ),
          Flexible(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("toplam: $totalPrice"),
                MyButton(
                  function: dataToFirebase,
                  text: "Teklif Al",
                  isLoading: isLoading,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
