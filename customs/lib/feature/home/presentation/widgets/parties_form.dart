import 'package:customs/core/error/validator.dart';
import 'package:customs/core/widgets/custom_text_field.dart'
    show CustomTextField;
import 'package:customs/feature/home/presentation/manager/cubit/home_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PartiesForm extends StatefulWidget {
  const PartiesForm({super.key});

  @override
  State<PartiesForm> createState() => _PartiesFormState();
}

class _PartiesFormState extends State<PartiesForm> {
  @override
  Widget build(BuildContext context) {
    final homeCubit = context.read<HomeCubit>();
    return Form(
      key: homeCubit.formKeys[1],
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: CustomTextField(
                  validator: (value) => Validator.validateEmpty(),
                  label: 'agent'.tr(),
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: CustomTextField(
                  validator: (value) => Validator.validateEmpty(),
                  label: 'beneficiary_number'.tr(),
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: CustomTextField(
                  validator: (value) => Validator.validateEmpty(),
                  label: 'beneficiary_name'.tr(),
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: CustomTextField(
                  validator: (value) => Validator.validateEmpty(),
                  label: 'beneficiary_address'.tr(),
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
                  label: 'dangerous_party'.tr(),
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: CustomTextField(
                  validator: (value) => Validator.validateEmpty(),
                  label: 'dangerous_party_address'.tr(),
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: CustomTextField(
                  validator: (value) => Validator.validateEmpty(),
                  label: 'agent_trade'.tr(),
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: CustomTextField(
                  validator: (value) => Validator.validateEmpty(),
                  label: 'agent_trade_placeholder'.tr(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
