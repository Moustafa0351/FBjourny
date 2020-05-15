import 'package:equatable/equatable.dart';


abstract class TimerState extends Equatable{
    final duration; 

    const TimerState(this.duration);  

    @override 
    List <Object> get props => [duration];
}


class Ready extends TimerState {
  const Ready (int duration):super (duration);

  @override 
  String toString() => "Ready : {$duration}";
 }

class Paused extends TimerState {
  const Paused (int duration):super (duration);

  @override 
  String toString() => "Paused : {$duration}";
 }
 class Running extends TimerState {
  const Running(int duration) : super(duration);

  @override
  String toString() => 'Running { duration: $duration }';
}

class Finished extends TimerState {
  const Finished() : super(0);
}