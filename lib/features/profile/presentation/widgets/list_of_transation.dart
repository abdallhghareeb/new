import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/features/profile/presentation/provider/wallet_provider.dart';
import 'package:untitled1/features/profile/presentation/widgets/transaction_widget.dart';

class ListOfTransactionWidgets extends StatelessWidget {
  const ListOfTransactionWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    var walletProvider = Provider.of<WalletProvider>(context);
    return SizedBox(
      width: 100.w,
      child: Wrap(
        children: List.generate(walletProvider.myTransactions.length, (index) => TransActionWidgets(myTransaction: walletProvider.myTransactions[index],)),
      ),
    );
  }


}
