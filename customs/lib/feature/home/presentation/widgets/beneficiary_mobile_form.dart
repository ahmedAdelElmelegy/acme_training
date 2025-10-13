import 'package:customs/core/error/validator.dart';
import 'package:customs/core/widgets/custom_drop_down.dart';
import 'package:customs/core/widgets/custom_text_field.dart';
import 'package:customs/feature/home/presentation/manager/cubit/home_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BeneficiaryMobileForm extends StatefulWidget {
  const BeneficiaryMobileForm({super.key});

  @override
  State<BeneficiaryMobileForm> createState() => _BeneficiaryMobileFormState();
}

class _BeneficiaryMobileFormState extends State<BeneficiaryMobileForm> {
  @override
  Widget build(BuildContext context) {
    final formKey = context.read<HomeCubit>().formKeys;

    return Form(
      key: formKey[0],
      child: Column(
        children: [
          CustomTextField(
            validator: (value) => Validator.validateEmpty(),
            label: 'mainfist_number'.tr(),
          ),
          const SizedBox(height: 16),
          CustomDropDown(
            validator: (value) => Validator.validateEmpty(),
            items: ['1', '2', '3'],
            title: 'policy_number'.tr(),
          ),
          const SizedBox(height: 16),
          CustomDropDown(
            validator: (value) => Validator.validateEmpty(),
            items: ['1', '2', '3'],
            title: 'custom_system'.tr(),
          ),
          const SizedBox(height: 16),
          CustomTextField(
            validator: (value) => Validator.validateEmpty(),
            label: 'policy_number'.tr(),
          ),
          const SizedBox(height: 16),
          CustomDropDown(
            validator: (value) => Validator.validateEmpty(),
            items: ['1', '2', '3'],
            title: 'policy_collect_type'.tr(),
          ),
          const SizedBox(height: 16),
          CustomTextField(
            label: 'date_of_shipping'.tr(),
            validator: (value) => Validator.validateEmpty(),
          ),
          const SizedBox(height: 16),
          CustomDropDown(
            validator: (value) => Validator.validateEmpty(),
            items: ['1', '2', '3'],
            title: 'country_of_shipping'.tr(),
          ),
          const SizedBox(height: 16),
          CustomDropDown(
            validator: (value) => Validator.validateEmpty(),
            items: ['1', '2', '3'],
            title: 'port_of_shipping'.tr(),
          ),
          const SizedBox(height: 16),
          CustomDropDown(
            validator: (value) => Validator.validateEmpty(),
            items: ['1', '2', '3'],
            title: 'port_of_arrival'.tr(),
          ),
          const SizedBox(height: 16),
          CustomDropDown(
            validator: (value) => Validator.validateEmpty(),
            items: ['1', '2', '3'],
            title: 'shipping_direction'.tr(),
          ),
          const SizedBox(height: 16),
          CustomDropDown(
            validator: (value) => Validator.validateEmpty(),
            items: ['1', '2', '3'],
            title: 'port_of_transit'.tr(),
          ),
          const SizedBox(height: 16),
          CustomDropDown(
            validator: (value) => Validator.validateEmpty(),
            items: ['1', '2', '3'],
            title: 'delivery_type'.tr(),
          ),
          const SizedBox(height: 16),
          CustomDropDown(
            validator: (value) => Validator.validateEmpty(),
            items: ['1', '2', '3'],
            title: 'danger_indicator'.tr(),
          ),
          const SizedBox(height: 16),
          CustomTextField(
            validator: (value) => Validator.validateEmpty(),
            label: 'notes'.tr(),
          ),
          const SizedBox(height: 16),
          CustomTextField(
            validator: (value) => Validator.validateEmpty(),
            label: 'goods_description'.tr(),
          ),
        ],
      ),
    );
  }
}
