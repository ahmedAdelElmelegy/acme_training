import 'package:customs/core/error/validator.dart';
import 'package:customs/core/widgets/custom_text_field.dart';
import 'package:customs/feature/home/presentation/manager/cubit/home_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PartiesMobileForm extends StatefulWidget {
  const PartiesMobileForm({super.key});

  @override
  State<PartiesMobileForm> createState() => _PartiesMobileFormState();
}

class _PartiesMobileFormState extends State<PartiesMobileForm> {
  @override
  Widget build(BuildContext context) {
    final formKey = context.read<HomeCubit>().formKeys;

    return Form(
      key: formKey[1],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(
            validator: (value) => Validator.validateEmpty(),
            label: 'agent'.tr(),
          ),
          const SizedBox(height: 16),
          CustomTextField(
            validator: (value) => Validator.validateEmpty(),
            label: 'beneficiary_number'.tr(),
          ),
          const SizedBox(height: 16),
          CustomTextField(
            validator: (value) => Validator.validateEmpty(),
            label: 'beneficiary_name'.tr(),
          ),
          const SizedBox(height: 16),
          CustomTextField(
            validator: (value) => Validator.validateEmpty(),
            label: 'beneficiary_address'.tr(),
          ),
          const SizedBox(height: 16),
          CustomTextField(
            validator: (value) => Validator.validateEmpty(),
            label: 'dangerous_party'.tr(),
          ),
          const SizedBox(height: 16),
          CustomTextField(
            validator: (value) => Validator.validateEmpty(),
            label: 'dangerous_party_address'.tr(),
          ),
          const SizedBox(height: 16),
          CustomTextField(
            validator: (value) => Validator.validateEmpty(),
            label: 'agent_trade'.tr(),
          ),
          const SizedBox(height: 16),
          CustomTextField(
            validator: (value) => Validator.validateEmpty(),
            label: 'agent_trade_placeholder'.tr(),
          ),
        ],
      ),
    );
  }
}
