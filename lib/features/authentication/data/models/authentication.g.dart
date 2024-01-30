// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AuthenticatedUserAdapter extends TypeAdapter<AuthenticatedUser> {
  @override
  final int typeId = 0;

  @override
  AuthenticatedUser read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AuthenticatedUser(
      id: fields[0] as String,
      firstName: fields[1] as String,
      lastName: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, AuthenticatedUser obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.firstName)
      ..writeByte(2)
      ..write(obj.lastName);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuthenticatedUserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
