import 'package:example/app/app.locator.dart';
import 'package:example/app/app.logger.dart';
import 'package:example/app/app.router.dart';
import 'package:example/services/shared_preferences_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../datamodels/clashable_one.dart';

class StartupVieWModel extends BaseViewModel {
  final _routerService = exampleLocator<RouterService>();
  final _log = getLogger('StartupVieWModel');
  final _preferences = exampleLocator<SharedPreferencesService>();

  void initialise() {
    _log.d('isUserLoggedIn:${_preferences.isUserLoggedIn}');
  }

  void navigateToBottomNavExample() {
    _routerService.navigateToBottomNavExample();
  }

  void replaceWithStreamCounterView() {
    _routerService.replaceWithStreamCounterView(clashableTwo: []);
  }
}
