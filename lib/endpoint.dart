import 'dart:core';

class Endpoint {
  static const apiScheme = 'https';
  static const apiHost = 'swentzel.github.io';
  static const prefix = '/cantine-app/mocks';

  static Uri uri(String path, {Map<String, dynamic> queryParameters}) {
    final uri = new Uri(
      scheme: apiScheme,
      host: apiHost,
      path: '$prefix$path',
      queryParameters: queryParameters,
    );
    print('${uri.toString()}');
    return uri;
  }
}
