import 'package:get_it/get_it.dart';
import 'package:mobizen/core/shared_preferences/preference_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

final injector = GetIt.instance;

Future<void> initialised() async {
  injector.registerSingleton<PreferenceHepler>(
    PreferenceHepler(
      await SharedPreferences.getInstance(),
    ),
  );
}
