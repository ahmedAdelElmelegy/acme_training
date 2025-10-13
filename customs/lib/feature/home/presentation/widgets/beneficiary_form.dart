import 'package:customs/core/error/validator.dart';
import 'package:customs/core/widgets/custom_drop_down.dart';
import 'package:customs/core/widgets/custom_text_field.dart';
import 'package:customs/feature/home/presentation/manager/cubit/home_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BeneficiaryForm extends StatefulWidget {
  const BeneficiaryForm({super.key});

  @override
  State<BeneficiaryForm> createState() => _BeneficiaryFormState();
}

class _BeneficiaryFormState extends State<BeneficiaryForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final homeCubit = context.read<HomeCubit>();
    return Form(
      key: homeCubit.formKeys[0],
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: CustomTextField(
                  validator: (value) => Validator.validateEmpty(),
                  label: 'mainfist_number'.tr(),
                ),
              ),
              SizedBox(width: 30),
              Expanded(
                child: CustomDropDown(
                  validator: (value) => Validator.validateEmpty(),
                  items: ['1', '2', '3'],
                  title: 'policy_number'.tr(),
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: CustomDropDown(
                  validator: (value) => Validator.validateEmpty(),
                  items: ['1', '2', '3'],
                  title: 'custom_system'.tr(),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              Expanded(
                child: CustomTextField(
                  validator: (value) => Validator.validateEmpty(),
                  label: 'policy_number'.tr(),
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: CustomDropDown(
                  validator: (value) => Validator.validateEmpty(),
                  items: ['1', '2', '3'],
                  title: 'policy_collect_type'.tr(),
                ),
              ),
            ],
          ),

          const SizedBox(height: 30),
          Row(
            children: [
              Expanded(
                child: CustomTextField(
                  label: 'date_of_shipping'.tr(),
                  validator: (value) => Validator.validateEmpty(),
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: CustomDropDown(
                  validator: (value) => Validator.validateEmpty(),
                  items: ['1', '2', '3'],
                  title: 'country_of_shipping'.tr(),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: CustomDropDown(
                  validator: (value) => Validator.validateEmpty(),
                  items: ['1', '2', '3'],
                  title: 'port_of_shipping'.tr(),
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: CustomDropDown(
                  validator: (value) => Validator.validateEmpty(),
                  items: ['1', '2', '3'],
                  title: 'port_of_arrival'.tr(),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),

          Row(
            children: [
              Expanded(
                child: CustomDropDown(
                  validator: (value) => Validator.validateEmpty(),
                  items: ['1', '2', '3'],
                  title: 'shipping_direction'.tr(),
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: CustomDropDown(
                  validator: (value) => Validator.validateEmpty(),
                  items: ['1', '2', '3'],
                  title: 'port_of_transit'.tr(),
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: CustomDropDown(
                  validator: (value) => Validator.validateEmpty(),
                  items: ['1', '2', '3'],
                  title: 'delivery_type'.tr(),
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: CustomDropDown(
                  validator: (value) => Validator.validateEmpty(),
                  items: ['1', '2', '3'],
                  title: 'danger_indicator'.tr(),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          CustomTextField(
            validator: (value) => Validator.validateEmpty(),
            label: 'notes'.tr(),
          ),
          const SizedBox(height: 30),
          CustomTextField(
            validator: (value) => Validator.validateEmpty(),
            label: 'goods_description'.tr(),
          ),
        ],
      ),
    );
  }
}
