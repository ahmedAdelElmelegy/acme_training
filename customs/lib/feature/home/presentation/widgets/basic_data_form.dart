import 'package:customs/core/error/validator.dart';
import 'package:customs/core/widgets/custom_drop_down.dart';
import 'package:customs/core/widgets/custom_text_field.dart';
import 'package:customs/feature/home/presentation/manager/cubit/home_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BasicDataForm extends StatefulWidget {
  const BasicDataForm({super.key});

  @override
  State<BasicDataForm> createState() => _BasicDataFormState();
}

class _BasicDataFormState extends State<BasicDataForm> {
  @override
  Widget build(BuildContext context) {
    final homeCubit = context.read<HomeCubit>();
    return Form(
      key: homeCubit.formKeys[4],
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: CustomTextField(
                  label: 'permit_number'.tr(),
                  validator: (value) => Validator.validateEmpty(),
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: CustomTextField(
                  label: 'permit_date'.tr(),
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
                  label: 'permit_issue_date'.tr(),
                  validator: (value) => Validator.validateEmpty(),
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: CustomDropDown(
                  items: ["1", "2", "3"],
                  title: 'transportation_method'.tr(),
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
                  title: 'country_of_destination'.tr(),
                  validator: (value) => Validator.validateEmpty(),
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: CustomDropDown(
                  items: ["1", "2", "3"],
                  title: 'wajh_port'.tr(),
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
