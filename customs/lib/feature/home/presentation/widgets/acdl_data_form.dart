import 'package:customs/core/widgets/custom_text_field.dart';
import 'package:customs/feature/home/presentation/manager/cubit/home_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:customs/core/error/validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AcidDataForm extends StatefulWidget {
  const AcidDataForm({super.key});

  @override
  State<AcidDataForm> createState() => _AcidDataFormState();
}

class _AcidDataFormState extends State<AcidDataForm> {
  @override
  Widget build(BuildContext context) {
    final homeCubit = context.read<HomeCubit>();
    return Form(
      key: homeCubit.formKeys[2],
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: CustomTextField(
                  validator: (value) => Validator.validateEmpty(),
                  label: 'acid_data_number'.tr(),
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: CustomTextField(
                  validator: (value) => Validator.validateEmpty(),
                  label: 'acid_tax_number'.tr(),
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: CustomTextField(
                  validator: (value) => Validator.validateEmpty(),
                  label: 'acid_country'.tr(),
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: CustomTextField(
                  validator: (value) => Validator.validateEmpty(),
                  label: 'acid_number'.tr(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
