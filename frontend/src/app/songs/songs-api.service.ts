import {Injectable} from '@angular/core';
import {HttpClient, HttpErrorResponse} from '@angular/common/http';
import {Observable} from 'rxjs';
import {API_URL} from '../env';
import {Song} from './song.model';

@Injectable()
export class SongsApiService {

  constructor(private http: HttpClient) {
  }

  private static _handleError(error: HttpErrorResponse) {
    throw new Error(error.message || 'Unable to retrieve songs');
  }

  getSongs(): Observable<Song[]> {
    try {
      return this.http
        .get<Song[]>(`${API_URL}/songs`)
    } catch (error) {
      SongsApiService._handleError(error);
      return new Observable<Song[]>();
    }
  }
}
