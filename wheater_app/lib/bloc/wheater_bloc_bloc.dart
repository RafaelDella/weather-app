import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather/weather.dart';
import 'package:wheater_app/data/my_data.dart';

part 'wheater_bloc_event.dart';
part 'wheater_bloc_state.dart';

class WheaterBloc extends Bloc<WheaterBlocEvent, WheaterBlocState> {
  WheaterBloc() : super(WeatherBlocInitial()) {
    on<FetchWeather>((event, emit) async {
      try {
        WeatherFactory wf = WeatherFactory(API_KEY, language: Language.PORTUGUESE_BRAZIL);
        Weather weather = await wf.currentWeatherByLocation(
          event.position.latitude, 
          event.position.longitude,
        );
        emit(WeatherBlocSucess(weather));
      } catch (e) {
        emit(WeatherBlocFailure());
      }
    });
  }
}
