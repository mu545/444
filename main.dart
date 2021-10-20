import 'package:flutter/material.dart';
import 'package:onlinestore_example/Models/Order.dart';
import 'package:onlinestore_example/Models/Product.dart';
import 'package:onlinestore_example/Provider/auth.dart';
import 'package:onlinestore_example/Provider/comentsss.dart';
import 'package:onlinestore_example/Sccren/Orderscreen.dart';
import 'package:onlinestore_example/Sccren/reviewpropvider.dart';
import 'package:onlinestore_example/Sccren/reviews.dart';
import 'package:onlinestore_example/Sccren/test.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:onlinestore_example/Widgets/detialsearch.dart';
import 'package:onlinestore_example/Widgets/editpage.dart';
import 'package:onlinestore_example/Widgets/searchjforitems.dart';

import 'Models/Cart.dart';
import 'Sccren/ProductItems.dart';
import 'Sccren/auth_screen.dart';
import 'Sccren/product_overview.dart';
import 'Widgets/Editadd.dart';
import 'Widgets/Product_detials_overview.dart';
import './Provider/Products.dart';
import 'package:provider/provider.dart';

import 'Widgets/viewscreen.dart';
import 'package:onlinestore_example/Sccren/cartscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider.value(
            value: Products(),
          ),
          ChangeNotifierProvider.value(
            value: Product(
                id: '', title: '', price: 0, description: '', imageUrl: ''),
          ),

          ChangeNotifierProvider(
            create: (ctx) => Comentss(),
          ),
          // ChangeNotifierProvider(
          //   create: (ctx) => Reviewproviser(),
          // ),
          ChangeNotifierProvider(
            create: (ctx) => cart(),
          ),
          ChangeNotifierProvider(create: (ctx) => Orders()),
        ],
        child: Consumer<Products>(
            builder: (ctx, auth, _) => MaterialApp(
                  debugShowCheckedModeBanner: false,
                  title: 'd',
                  home: ProductOverView(),
                  routes: {
                    // VieeScreen.routeName: (ctx) => VieeScreen(),
                    AuthForm.routeNamed: (ctx) => AuthScreen(),
                    Detalsearch.routeName: (ctx) => Detalsearch(),
                    Reviwes.routeNamed: (ctx) => Reviwes(),
                    Textxx.routeNamed: (ctx) => Textxx(),

                    ProductDetails.routeName: (ctx) => ProductDetails(),
                    cartscreen.routeName: (ctx) => cartscreen(),
                    Orderscreen.routeNmae: (ctx) => Orderscreen(),
                    // ProductItems.routeNamed: (ctx) => ProductItems(),
                    Editadd.routeNamed: (ctx) => Editadd(),
                    // Searchforitems.routeNamed: (ctx) => Searchforitems()
                  },
                )));
  }
}
//
