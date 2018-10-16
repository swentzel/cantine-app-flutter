import 'dart:core';

class Endpoint {
  static const apiScheme = 'https';
  // static const apiHost = 'swentzel.github.io';
  // static const prefix = '/cantine-app/mocks';
  static const apiHost = 'wadhr23uxa.execute-api.eu-central-1.amazonaws.com';
  static const prefix = '/dev/cantines';

  static Uri uri(String path, {Map<String, dynamic> queryParameters}) {
    final uri = new Uri(
      scheme: apiScheme,
      host: apiHost,
      // path: '$prefix$path',
      path: '$prefix',
      queryParameters: queryParameters,
    );
    print('${uri.toString()}');
    return uri;
  }
}
