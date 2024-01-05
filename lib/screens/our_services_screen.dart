import 'package:flutter/material.dart';
import 'package:univers_ai/product/product.dart';
import 'package:univers_ai/widgets/card_content.dart';
import 'package:univers_ai/widgets/my_card.dart';

class OurServices extends StatelessWidget {
  const OurServices({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    void goToScreen(Widget widget) {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) {
          return widget;
        }),
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
      child: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              child: Column(
                children: [
                  MyCard(
                    text: 'Mobil-Uygulama',
                    function: () {
                      goToScreen(
                        CardContent(
                          title: "Mobil-Uygulama",
                          text: """


🚀 Mobil Dünyasında Başarı İçin İnovasyon!

Sizler için yenilikçi ve kullanıcı odaklı mobil çözümler sunan şirketimiz,
dijital dünyada öne çıkan bir marka olmanız için güçlü bir ortaklık sunmaktadır.
Müşteri memnuniyeti ve pazar liderliği odaklı yaklaşımımızla,
şirketinizin büyümesine ve başarılı olmasına katkıda bulunuyoruz.

💡 Bizimle Neden Çalışmalısınız?

Deneyimli ve uzman bir ekip.
Hızlı ve esnek çözümler.
Sürekli güncellenen teknoloji bilgisi.
Mobil uygulama dünyasında fark yaratmak, şirketinizi dijital çağda öne çıkarmak ve başarıya ulaşmak için bizimle iletişime geçin! 🚀📱
""",
                          products: Product.mobileList,
                          selectedProductsMap: 'selectedProductsMobil',
                        ),
                      );
                    },
                  ),
                  MyCard(
                    text: 'Büyük Veri',
                    function: () {
                      goToScreen(
                        CardContent(
                          title: "Büyük Veri",
                          text: "text",
                          products: Product.dataList,
                          selectedProductsMap: 'selectedProductsData',
                        ),
                      );
                    },
                  ),
                  MyCard(
                    text: 'Siber Güvenlik',
                    function: () {
                      goToScreen(
                        CardContent(
                          title: "Siber Güvenlik",
                          text: "text",
                          products: Product.cyberList,
                          selectedProductsMap: 'selectedProductsCyber',
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Flexible(
              child: Column(
                children: [
                  MyCard(
                    text: 'Web Sitesi',
                    function: () {
                      goToScreen(
                        CardContent(
                          title: "Web Sitesi",
                          text: "text",
                          products: Product.webList,
                          selectedProductsMap: 'selectedProductsWeb',
                        ),
                      );
                    },
                  ),
                  MyCard(
                    text: 'Makina Öğrenmesi',
                    function: () {
                      goToScreen(
                        CardContent(
                          title: "Makina Öğrenmesi",
                          text: "text",
                          products: Product.machineList,
                          selectedProductsMap: 'selectedProductsMachine',
                        ),
                      );
                    },
                  ),
                  MyCard(
                    text: 'Bulut Bilişim',
                    function: () {
                      goToScreen(
                        CardContent(
                          title: "Bulut Bilişim",
                          text: "text",
                          products: Product.cloudList,
                          selectedProductsMap: 'selectedProductsCloud',
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
