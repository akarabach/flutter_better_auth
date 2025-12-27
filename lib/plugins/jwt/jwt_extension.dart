import '../../core/api/better_auth_client.dart';
import '../../core/flutter_better_auth.dart';
import 'jwt_better_auth.dart';

extension JwtBetterAuthExtension on BetterAuthClient {
  JwtBetterAuth get jwt => JwtBetterAuth(
    FlutterBetterAuth.dioClient,
    baseUrl: FlutterBetterAuth.baseUrl,
  );

  Future<String?> jwtTokenFromCookie(String? url) async {
    final cookies =
        await FlutterBetterAuth.storage?.loadCookies(
          url ?? FlutterBetterAuth.baseUrl,
        ) ??
        [];

    print(cookies);

    final jwtCookie = cookies.firstWhere(
      (c) => c.name == 'better-auth.convex_jwt',
    );

    return jwtCookie.value;
  }
}
