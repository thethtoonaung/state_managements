

import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class CounterGetXController extends GetxController {

  RxInt value = 0.obs;


  void add() {
    value.value++;
  }

  void subtract() {
    value.value--;
  }

}