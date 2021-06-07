import { Component } from '@angular/core';
import {Subscription} from "rxjs";
import {Song} from "./songs/song.model";
import {SongsApiService} from "./songs/songs-api.service";

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'app';
  songsSubs: Subscription = new Subscription();
  songs: Song[] = [];

  constructor(private songsApiService: SongsApiService) {
  }

  ngOnInit() {
    this.songsSubs = this.songsApiService
      .getSongs()
      .subscribe(res => {
          this.songs = res;
        },
        console.error
      );
  }

  ngOnDestroy() {
    this.songsSubs.unsubscribe();
  }
}
