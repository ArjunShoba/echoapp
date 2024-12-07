import 'package:appwrite/appwrite.dart';

class AppwriteService {
  static final AppwriteService _instance = AppwriteService._internal();

  late Client client;
  late Databases database;

  factory AppwriteService() {
    return _instance;
  }

  AppwriteService._internal() {
    client = Client()
      ..setEndpoint('https://cloud.appwrite.io/v1')
      ..setProject('6752c2bb003d2dba57a1');

    database = Databases(client);
  }
}

final appwriteService = AppwriteService();