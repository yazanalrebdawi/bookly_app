import 'package:bookly_app/features/home/data/repos/home_repo_implementation.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'api_servies.dart';

final getit = GetIt.instance;
void setUp() {
  getit.registerSingleton<Apiservices>(Apiservices(Dio()));
  getit.registerSingleton<HomeREpoImpl>(
    HomeREpoImpl(getit.get<Apiservices>()),
  );
}
