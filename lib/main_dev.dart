import 'package:ci_cd_sample/enviroment.dart';
import 'package:ci_cd_sample/main_common.dart';

Future<void> main() async {
  await mainCommon(Enviroment.dev);
}
