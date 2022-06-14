import 'dart:async';
import 'package:flutter/material.dart';

import 'package:final_task/data/services/auth/auth_service.dart';
import 'package:final_task/data/services/notification/notification_service.dart';
import 'package:final_task/data/api/api_client.dart';
import 'package:final_task/data/app_repository_provider.dart';
import 'package:final_task/data/preference_client.dart';
import 'package:final_task/data/services/api_service.dart';
import 'package:final_task/models/models.dart';

class AppRepository {
  AppRepository({required this.preferencesClient, required this.config})
      : assert(preferencesClient != null && config != null) {
    apiClient = ApiClient(config: config!);
    services = <ApiService>[
      AuthService(client: apiClient!),
      NotificationService(client: apiClient!),
    ];
  }

  final PreferencesClient? preferencesClient;
  final ApiConfig? config;
  ApiClient? apiClient;
  List<ApiService>? services;

  static AppRepository of(BuildContext context) {
    final AppRepositoryProvider? provider =
        context.dependOnInheritedWidgetOfExactType<AppRepositoryProvider>();
    if (provider == null) {
      throw 'AppRepositoryProvider not found';
    }

    return provider.repository;
  }

  ApiService getService<T>() {
    return services!.firstWhere((ApiService s) => s is T);
  }

  Future<AppUser?> getUserFromPrefs() async {
    return preferencesClient!.getUser();
  }

  Future<void> setUserPrefs({AppUser? appUser}) async {
    preferencesClient!.saveUser(appUser: appUser);
  }

  //***************************** user-access-token ****************************//
  Future<void> setUserAccessToken({AccessToken? accessToken}) async {
    preferencesClient!.setUserAccessToken(token: accessToken);
  }

  Future<AccessToken?> getUserAccessToken() async {
    return preferencesClient!.getUserAccessToken();
  }
}
