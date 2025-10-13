import 'package:customs/core/error/validator.dart';
import 'package:customs/core/widgets/custom_btn.dart';
import 'package:customs/core/widgets/custom_drop_down.dart';
import 'package:customs/core/widgets/custom_text_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class BillOfLadingForm extends StatefulWidget {
  const BillOfLadingForm({super.key});

  @override
  State<BillOfLadingForm> createState() => _BillOfLadingFormState();
}

class _BillOfLadingFormState extends State<BillOfLadingForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: CustomDropDown(
                  validator: (value) => Validator.validateEmpty(),
                  items: ['1', '2', '3'],
                  title: 'mainfist_number'.tr(),
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: CustomTextField(
                  validator: (value) => Validator.validateEmpty(),
                  label: 'mainfist_type'.tr(),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          CustomTextField(
            validator: (value) => Validator.validateEmpty(),
            label: 'policy_number'.tr(),
          ),

          const SizedBox(height: 30),
          Row(
            children: [
              Expanded(
                child: CustomDropDown(
                  validator: (value) => Validator.validateEmpty(),
                  items: ['الإمارات', 'السعودية', 'الكويت'],
                  title: 'country_of_shipping'.tr(),
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: CustomTextField(
                  validator: (value) => Validator.validateEmpty(),
                  label: 'port_of_shipping'.tr(),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: CustomTextField(
                  validator: (value) => Validator.validateEmpty(),
                  label: 'port_of_arrival'.tr(),
                ),
              ),
              const SizedBox(width: 200),
              CustomBtn(
                text: 'search'.tr(),
                onPressed: () {
                  if (formKey.currentState!.validate()) {}
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
