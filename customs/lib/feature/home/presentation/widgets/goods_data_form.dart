import 'package:customs/core/error/validator.dart';
import 'package:customs/core/widgets/custom_drop_down.dart';
import 'package:customs/core/widgets/custom_text_field.dart';
import 'package:customs/feature/home/presentation/manager/cubit/home_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GoodsDataForm extends StatefulWidget {
  const GoodsDataForm({super.key});

  @override
  State<GoodsDataForm> createState() => _GoodsDataFormState();
}

class _GoodsDataFormState extends State<GoodsDataForm> {
  @override
  Widget build(BuildContext context) {
    final homeCubit = context.read<HomeCubit>();
    return Form(
      key: homeCubit.formKeys[3],
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: CustomTextField(
                  label: 'type'.tr(),
                  validator: (value) => Validator.validateEmpty(),
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: CustomDropDown(
                  items: ["1", "2", "3"],
                  title: 'weight_of_the_shipment'.tr(),
                  validator: (value) => Validator.validateEmpty(),
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: CustomTextField(
                  label: 'number_of_cargo'.tr(),
                  validator: (value) => Validator.validateEmpty(),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              Expanded(
                child: CustomDropDown(
                  items: ["1", "2", "3"],
                  title: 'unit_of_cargo'.tr(),
                  validator: (value) => Validator.validateEmpty(),
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: CustomTextField(
                  label: 'gross_weight'.tr(),
                  validator: (value) => Validator.validateEmpty(),
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: CustomTextField(
                  label: 'net_weight'.tr(),
                  validator: (value) => Validator.validateEmpty(),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              Expanded(
                child: CustomDropDown(
                  items: ["1", "2", "3"],
                  title: 'unit_of_weight'.tr(),
                  validator: (value) => Validator.validateEmpty(),
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: CustomTextField(
                  label: 'volume'.tr(),
                  validator: (value) => Validator.validateEmpty(),
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: CustomDropDown(
                  items: ["1", "2", "3"],
                  title: 'unit_of_volume'.tr(),
                  validator: (value) => Validator.validateEmpty(),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              Expanded(
                child: CustomTextField(
                  label: 'cargo_number'.tr(),
                  validator: (value) => Validator.validateEmpty(),
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: CustomTextField(
                  label: 'good_description'.tr(),
                  validator: (value) => Validator.validateEmpty(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
