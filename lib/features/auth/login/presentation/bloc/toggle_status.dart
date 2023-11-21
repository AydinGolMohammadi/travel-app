import 'package:flutter/material.dart';

@immutable
abstract class ToggleStatus{}

class ToggleBool extends ToggleStatus{
  final bool obscureBool;

  ToggleBool(this.obscureBool);
}