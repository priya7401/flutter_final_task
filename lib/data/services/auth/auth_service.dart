import 'dart:async';
import 'package:final_task/data/api/api_client.dart';
import 'package:final_task/data/services/api_service.dart';
import 'package:final_task/models/models.dart';

class AuthService extends ApiService {
  AuthService({required ApiClient client}) : super(client: client);

//************************************ log-in *********************************//
  Future<Map<String, dynamic>> loginWithPassword(
      {Map<String, dynamic>? objToApi}) async {
    final ApiResponse<ApiSuccess> res = await client!.callJsonApi<ApiSuccess>(
        method: Method.POST,
        headers: <String, String>{
          'Content-Type': 'application/json',
        },
        path: '/user_management/customer/sign_in',
        body: objToApi);
    if (res.isSuccess) {
      return {'customer': res.data!.user};
    } else {
      throw res.error;
    }
  }

  //************************************ register with mobile *********************************//
  Future<Map<String, dynamic>> registerWithMobile(
      {Map<String, dynamic>? objToApi}) async {
    final ApiResponse<ApiSuccess> res = await client!.callJsonApi<ApiSuccess>(
        method: Method.POST,
        headers: <String, String>{
          'Content-Type': 'application/json',
        },
        path: '/user/auth/signup',
        body: objToApi);
    if (res.isSuccess) {
      return {
        // 'user_auth_profile': res.data.userAuthProfile,
        'user': res.data?.user
      };
    } else {
      throw res.error;
    }
  }

//********************************* confirm-otp ******************************//
//   Future<Map<String, dynamic>> confirmOtp({String mobileNo, String otp}) async {
//     final Map<String, String> objToApi = <String, String>{
//       'username': mobileNo,
//       'otp': otp
//     };
//     final ApiResponse<ApiSuccess> res = await client!.callJsonApi<ApiSuccess>(
//         method: Method.POST, path: '/user/auth/login', body: objToApi);
//     if (res.isSuccess) {
//       return {'appUser': res.data?.user, 'access-token': res.data.accessToken!};
//     } else {
//       throw res.error;
//     }
//   }

}
