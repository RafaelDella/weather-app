part of 'wheater_bloc_bloc.dart';

sealed class WheaterBlocEvent extends Equatable {
  const WheaterBlocEvent();

  @override
  List<Object> get props => [];
}

class FetchWeather extends WheaterBlocEvent{
  final Position position;

  const FetchWeather(this.position);

  @override
  List<Object> get props => [position];
}
