import 'package:bootstrap_rask/core/helpers/constants.dart';
import 'package:bootstrap_rask/dashboard_ui/data/model/side_bar_model.dart';

abstract class AppConstants {
  static List<SideBarModel> sideBarItems = [
    SideBarModel(title: 'Dashboard', icon: AppIcons.home),
    SideBarModel(title: 'Transactions', icon: AppIcons.transfer),
    SideBarModel(title: 'Accounts', icon: AppIcons.user),
    SideBarModel(title: 'Investments', icon: AppIcons.investments),
    SideBarModel(title: 'Credit Cards', icon: AppIcons.credit),
    SideBarModel(title: 'Loans', icon: AppIcons.loans),
    SideBarModel(title: 'Services', icon: AppIcons.services),
    SideBarModel(title: 'My Privileges', icon: AppIcons.privileges),
    SideBarModel(title: 'Settings', icon: AppIcons.settings),
  ];
}
