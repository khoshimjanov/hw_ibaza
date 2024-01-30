import 'package:hive/hive.dart';

part 'authentication.g.dart';

@HiveType(typeId: 0)
class AuthenticatedUser extends HiveObject{
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String firstName;
  @HiveField(2)
  final String lastName;

  AuthenticatedUser({required this.id, required this.firstName, required this.lastName});
}