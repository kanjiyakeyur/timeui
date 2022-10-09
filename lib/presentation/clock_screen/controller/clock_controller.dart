import '/core/app_export.dart';
import 'package:keyur_s_application1/presentation/clock_screen/models/clock_model.dart';

class ClockController extends GetxController {
  Rx<ClockModel> clockModelObj = ClockModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
