part of 'wheater_bloc_bloc.dart';

sealed class WheaterBlocState extends Equatable {
  const WheaterBlocState();
  
  @override
  List<Object> get props => [];
}

final class WeatherBlocInitial extends WheaterBlocState {}

final class WeatherBlocLoading extends WheaterBlocState {}
final class WeatherBlocFailure extends WheaterBlocState {}
final class WeatherBlocSucess extends WheaterBlocState {
  final Weather weather;

  const WeatherBlocSucess(this.weather); 

  @override
  List<Object> get props => [weather];
}
