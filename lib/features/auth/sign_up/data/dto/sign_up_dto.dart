import 'package:travel_app/features/auth/sign_up/domain/entity/sign_up_entity.dart';

class SignUpDto extends SignUpEntity {
  SignUpDto(
      {required super.avatar,
      required super.collectionId,
      required super.collectionName,
      required super.created,
      required super.emailVisibility,
      required super.id,
      required super.name,
      required super.updated,
      required super.username,
      required super.verified});
}
