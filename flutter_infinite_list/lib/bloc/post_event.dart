import 'package:equatable/equatable.dart';

// first the main class for the body of the event page
abstract class PostEvent extends Equatable {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

// all the events needed in our page

class Fetch extends PostEvent {}

