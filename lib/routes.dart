import 'package:flutter_crud/presentation/features/grab_sliver_app_bar/grab_sliver_app_bar.dart';
import 'package:flutter_crud/presentation/features/home/home_screen.dart';
import 'package:get/get.dart';

import 'presentation/features/city/city.dart';
import 'presentation/features/master_status/master_status.dart';
import 'presentation/features/merchant/merchant.dart';
import 'presentation/features/order_items/order_items.dart';
import 'presentation/features/order_status/order_status.dart';
import 'presentation/features/product/product.dart';
import 'presentation/features/user/user.dart';

class Routes {
  // HOME
  static String home = '/home';

  // MASTER STATUS
  static String mainMasterStatus = '/master_status/main';
  static String addMasterStatus = '/master_status/add';
  static String editMasterStatus = '/master_status/edit';

  // MERCHANT
  static String mainMerchant = '/merchant/main';
  static String addMerchant = '/merchant/add';
  static String editMerchant = '/merchant/edit';

  // CITY
  static String mainCity = '/city/main';
  static String addCity = '/city/add';
  static String editCity = '/city/edit';

  // ORDER ITEMS
  static String mainOrderItems = '/order_items/main';
  static String addOrderItems = '/order_items/add';
  static String editOrderItems = '/order_items/edit';

  // USER
  static String mainUser = '/user/main';
  static String addUser = '/user/add';
  static String editUser = '/user/edit';

  // PRODUCT
  static String mainProduct = '/product/main';
  static String addProduct = '/product/add';
  static String editProduct = '/product/edit';

  // ORDER STATUS
  static String mainOrderStatus = '/order_status/main';
  static String addOrderStatus = '/order_status/add';
  static String editOrderStatus = '/order_status/edit';

  //Sliver
  static String paralaxSliver = '/paralax_sliver/main';
}

final getPages = [
  // HOME
  GetPage(
    name: Routes.home,
    page: () => const HomeScreen(),
    transition: Transition.cupertino,
  ),

  // MASTER STATUS
  GetPage(
    name: Routes.mainMasterStatus,
    page: () => const MainMasterStatusScreen(),
    binding: MasterStatusBinding(),
    transition: Transition.cupertino,
  ),
  GetPage(
    name: Routes.addMasterStatus,
    page: () => const AddMasterStatusScreen(),
    binding: MasterStatusBinding(),
    transition: Transition.cupertino,
  ),
  GetPage(
    name: Routes.editMasterStatus,
    page: () => const EditMasterStatusScreen(),
    binding: MasterStatusBinding(),
    transition: Transition.cupertino,
  ),

  // MERCHANT
  GetPage(
    name: Routes.mainMerchant,
    page: () => const MainMerchantScreen(),
    binding: MerchantBinding(),
    transition: Transition.cupertino,
  ),
  GetPage(
    name: Routes.addMerchant,
    page: () => const AddMerchantScreen(),
    binding: MerchantBinding(),
    transition: Transition.cupertino,
  ),
  GetPage(
    name: Routes.editMerchant,
    page: () => const EditMerchantScreen(),
    binding: MerchantBinding(),
    transition: Transition.cupertino,
  ),

  // CITY
  GetPage(
    name: Routes.mainCity,
    page: () => const MainCityScreen(),
    binding: CityBinding(),
    transition: Transition.cupertino,
  ),
  GetPage(
    name: Routes.addCity,
    page: () => const AddCityScreen(),
    binding: CityBinding(),
    transition: Transition.cupertino,
  ),
  GetPage(
    name: Routes.editCity,
    page: () => const EditCityScreen(),
    binding: CityBinding(),
    transition: Transition.cupertino,
  ),

  // ORDER ITEMS
  GetPage(
    name: Routes.mainOrderItems,
    page: () => const MainOrderItemsScreen(),
    binding: OrderItemsBinding(),
    transition: Transition.cupertino,
  ),
  GetPage(
    name: Routes.addOrderItems,
    page: () => const AddOrderItemsScreen(),
    binding: OrderItemsBinding(),
    transition: Transition.cupertino,
  ),
  GetPage(
    name: Routes.editOrderItems,
    page: () => const EditOrderItemsScreen(),
    binding: OrderItemsBinding(),
    transition: Transition.cupertino,
  ),

  // USER
  GetPage(
    name: Routes.mainUser,
    page: () => const MainUserScreen(),
    binding: UserBinding(),
    transition: Transition.cupertino,
  ),
  GetPage(
    name: Routes.addUser,
    page: () => const AddUserScreen(),
    binding: UserBinding(),
    transition: Transition.cupertino,
  ),
  GetPage(
    name: Routes.editUser,
    page: () => const EditUserScreen(),
    binding: UserBinding(),
    transition: Transition.cupertino,
  ),

  // PRODUCT
  GetPage(
    name: Routes.mainProduct,
    page: () => const MainProductScreen(),
    binding: ProductBinding(),
    transition: Transition.cupertino,
  ),
  GetPage(
    name: Routes.addProduct,
    page: () => const AddProductScreen(),
    binding: ProductBinding(),
    transition: Transition.cupertino,
  ),
  GetPage(
    name: Routes.editProduct,
    page: () => const EditProductScreen(),
    binding: ProductBinding(),
    transition: Transition.cupertino,
  ),
  
  // ORDER STATUS
  GetPage(
    name: Routes.mainOrderStatus,
    page: () => const MainOrderStatusScreen(),
    binding: OrderStatusBinding(),
    transition: Transition.cupertino,
  ),
  GetPage(
    name: Routes.addOrderStatus,
    page: () => const AddOrderStatusScreen(),
    binding: OrderStatusBinding(),
    transition: Transition.cupertino,
  ),
  GetPage(
    name: Routes.editOrderStatus,
    page: () => const EditOrderStatusScreen(),
    binding: OrderStatusBinding(),
    transition: Transition.cupertino,
  ),
  GetPage(
    name: Routes.paralaxSliver,
    page: () => const ParalaxSliver(),
    binding: OrderStatusBinding(),
    transition: Transition.cupertino,
  ),
];
