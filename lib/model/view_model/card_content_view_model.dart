import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:univers_ai/utility/custom_snack_bar.dart';
import 'package:univers_ai/widgets/card_content.dart';

abstract class CardContentViewModel extends State<CardContent>{
    final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  Map<int, bool> isCheckedMap = {};
  bool isLoading = false;
  double totalPrice = 0.0;
  _changeLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }

  void dataToFirebase() async {
    _changeLoading();
    try {
      await firestore.collection("users").doc(auth.currentUser?.uid).update({
        widget.selectedProductsMap: {
          'serviceName': widget.title,
          'selectedProducts': getSelectedProductNames(),
          'price': totalPrice,
        },
      });
      _changeLoading();
      CustomSnackBar.showCustomSnackBar(context,
          "Talebiniz oluşturuldu, en kısa zamanda sizinle iletişime geçeceğiz");
    } catch (e) {}
  }

  List<String> getSelectedProductNames() {
    List<String> selectedProductNames = [];
    isCheckedMap.forEach((index, isChecked) {
      if (isChecked) {
        selectedProductNames.add(widget.products[index].name);
      }
    });
    return selectedProductNames;
  }

  void updateTotalPrice() {
    totalPrice = 0.0;
    isCheckedMap.forEach((index, isChecked) {
      if (isChecked) {
        totalPrice += widget.products[index].price;
      }
    });
  }

}