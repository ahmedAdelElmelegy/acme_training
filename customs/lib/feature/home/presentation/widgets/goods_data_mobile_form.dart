import 'package:customs/core/error/validator.dart';
import 'package:customs/core/widgets/custom_drop_down.dart';
import 'package:customs/core/widgets/custom_text_field.dart';
import 'package:customs/feature/home/presentation/manager/cubit/home_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GoodsDataMobileForm extends StatefulWidget {
  const GoodsDataMobileForm({super.key});

  @override
  State<GoodsDataMobileForm> createState() => _GoodsDataMobileFormState();
}

class _GoodsDataMobileFormState extends State<GoodsDataMobileForm> {
  @override
  Widget build(BuildContext context) {
    final formKey = context.read<HomeCubit>().formKeys;

    return Form(
      key: formKey[3],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(
            label: 'type'.tr(),
            validator: (value) => Validator.validateEmpty(),
          ),
          const SizedBox(height: 16),
          CustomDropDown(
            items: ["1", "2", "3"],
            title: 'weight_of_the_shipment'.tr(),
            validator: (value) => Validator.validateEmpty(),
          ),
          const SizedBox(height: 16),
          CustomTextField(
            label: 'number_of_cargo'.tr(),
            validator: (value) => Validator.validateEmpty(),
          ),
          const SizedBox(height: 16),
          CustomDropDown(
            items: ["1", "2", "3"],
            title: 'unit_of_cargo'.tr(),
            validator: (value) => Validator.validateEmpty(),
          ),
          const SizedBox(height: 16),
          CustomTextField(
            label: 'gross_weight'.tr(),
            validator: (value) => Validator.validateEmpty(),
          ),
          const SizedBox(height: 16),
          CustomTextField(
            label: 'net_weight'.tr(),
            validator: (value) => Validator.validateEmpty(),
          ),
          const SizedBox(height: 16),
          CustomDropDown(
            items: ["1", "2", "3"],
            title: 'unit_of_weight'.tr(),
            validator: (value) => Validator.validateEmpty(),
          ),
          const SizedBox(height: 16),
          CustomTextField(
            label: 'volume'.tr(),
            validator: (value) => Validator.validateEmpty(),
          ),
          const SizedBox(height: 16),
          CustomDropDown(
            items: ["1", "2", "3"],
            title: 'unit_of_volume'.tr(),
            validator: (value) => Validator.validateEmpty(),
          ),
          const SizedBox(height: 16),
          CustomTextField(
            label: 'cargo_number'.tr(),
            validator: (value) => Validator.validateEmpty(),
          ),
          const SizedBox(height: 16),
          CustomTextField(
            label: 'good_description'.tr(),
            validator: (value) => Validator.validateEmpty(),
          ),
        ],
      ),
    );
  }
}
