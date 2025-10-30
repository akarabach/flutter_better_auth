import 'package:cookie_jar/cookie_jar.dart';

import 'storage.dart';

class CustomPersistCookieJar extends PersistCookieJar {
  final StorageInterface? store;

  CustomPersistCookieJar({required this.store, required super.storage});

  @override
  Future<void> saveFromResponse(Uri uri, List<Cookie> cookies) async {
    print('saveFromResponse ${uri} cookies: ${cookies.length}');
    await store?.saveCookies(uri.host, cookies);
    return super.saveFromResponse(uri, cookies);
  }

  @override
  Future<List<Cookie>> loadForRequest(Uri uri) async {
    final cookies = await store?.loadCookies(uri.host) ?? [];
    print('loadForRequest ${uri.host}, cookies: ${cookies.length}');
    return cookies;
  }
}
