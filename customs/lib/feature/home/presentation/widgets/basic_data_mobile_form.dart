import 'package:customs/core/error/validator.dart';
import 'package:customs/core/widgets/custom_drop_down.dart';
import 'package:customs/core/widgets/custom_text_field.dart';
import 'package:customs/feature/home/presentation/manager/cubit/home_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BasicDataMobileForm extends StatefulWidget {
  const BasicDataMobileForm({super.key});

  @override
  State<BasicDataMobileForm> createState() => _BasicDataMobileFormState();
}

class _BasicDataMobileFormState extends State<BasicDataMobileForm> {
  @override
  Widget build(BuildContext context) {
    final formKey = context.read<HomeCubit>().formKeys;

    return Form(
      key: formKey[4],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(
            label: 'permit_number'.tr(),
            validator: (value) => Validator.validateEmpty(),
          ),
          const SizedBox(height: 16),
          CustomTextField(
            label: 'permit_date'.tr(),
            validator: (value) => Validator.validateEmpty(),
          ),
          const SizedBox(height: 16),
          CustomTextField(
            label: 'permit_issue_date'.tr(),
            validator: (value) => Validator.validateEmpty(),
          ),
          const SizedBox(height: 16),
          CustomDropDown(
            items: ["1", "2", "3"],
            title: 'transportation_method'.tr(),
            validator: (value) => Validator.validateEmpty(),
          ),
          const SizedBox(height: 16),
          CustomDropDown(
            items: ["1", "2", "3"],
            title: 'country_of_destination'.tr(),
            validator: (value) => Validator.validateEmpty(),
          ),
          const SizedBox(height: 16),
          CustomDropDown(
            items: ["1", "2", "3"],
            title: 'wajh_port'.tr(),
            validator: (value) => Validator.validateEmpty(),
          ),
        ],
      ),
    );
  }
}
