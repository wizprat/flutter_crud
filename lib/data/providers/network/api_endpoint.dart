class APIEndpoint {
  static String get baseUrl => 'http://10.0.2.2:8000';
  static String get apiUrl => '$baseUrl/api/v1';
  static String get masterStatus => '$apiUrl/product';
  /* static String get baseUrl => 'http://192.168.0.51:5000';
  static String get apiUrl => '$baseUrl/api';
  static String get masterStatus => '$apiUrl/master-status'; */
  // static String get user => '$apiUrl/user';
  // static String get event => '$apiUrl/event';
  // static String get guest => '$apiUrl/guest';
}
