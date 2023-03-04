import 'package:get/instance_manager.dart';

class FirstBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FirstController());
  }
}

class FirstController {
  final String name = 'FirstController';

  final String nextRoute = '/second';
}

class SecondBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SecondController());
  }
}

class SecondController {
  final String name = 'SecondController';

  final String nextRoute = '/third';
}

class ThirdBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ThirdController());
  }
}

class ThirdController {
  final String name = 'ThirdController';

  final String nextRoute = '/fourth';
}

class FourthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FourthController());
  }
}

class FourthController {
  final String name = 'FourthController';

 
}
