
import 'package:untitled1/core/models/payment_method_model.dart';

abstract class CheckOutWidgetClass{
  late List<PaymentMethodModel> payments;
  bool paymentSelected(String data);
  void changePayment(String data);
}