import { Injectable } from '@angular/core';
import {HttpClient} from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class WeatherService {

  apiKey = '5888301ef49393a3cd749fed354ac0f2';
  URI: string = '';

  constructor(private http: HttpClient) {
    this.URI = 'https://api.openweathermap.org/data/2.5//weather?appid=${this.apiKey}&units=metric&q=`'
   }

   getWeather(CityName:string , countryCode:string) {
    return this.http.get(`${this.URI}${cityName},${countryCode}`);
   }
}
