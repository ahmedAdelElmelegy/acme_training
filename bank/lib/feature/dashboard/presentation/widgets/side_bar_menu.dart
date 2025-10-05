import 'package:bank/core/helpers/constants.dart';
import 'package:bank/core/theme/style.dart';
import 'package:bank/feature/dashboard/presentation/widgets/side_bar_list.dart';
import 'package:flutter/material.dart';

class SideBarMenu extends StatelessWidget {
  final void Function(int index)? function;
  const SideBarMenu({super.key, this.function});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppImages.logo, width: 28),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'BankDashboard',
                        style: AppTextStyle.font25Bold(context),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12),
              SidBarList(function: function),
            ],
          ),
        ),
      ),
    );
  }
}
