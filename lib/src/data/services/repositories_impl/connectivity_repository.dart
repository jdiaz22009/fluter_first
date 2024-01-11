import '../../../domain/repositories/conectivity_repository.dart';

class ConnectivityRepositoryImpl implements ConnectivityRepository {
  @override
  Future<bool> get hasInternet async {
    return false;
  }
}
