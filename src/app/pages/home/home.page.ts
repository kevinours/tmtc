import { DatabaseService, Dev } from './../../services/database.service';
import { Component, OnInit } from '@angular/core';
import { Observable } from 'rxjs';

@Component({
  selector: 'app-home',
  templateUrl: './home.page.html',
  styleUrls: ['./home.page.scss'],
})
export class HomePage implements OnInit {
 
  developers: Dev[] = [];
 
  products: Observable<any[]>;
 
  developer = {};
  product = {};
 

 
  constructor(private db: DatabaseService) { }
 
  ngOnInit() {
    this.db.getDatabaseState().subscribe(rdy => {
      if (rdy) {
        this.db.getDevs().subscribe(devs => {
          this.developers = devs;
        })
        this.products = this.db.getProducts();
      }
    });
  }



  dislike(id, score){
    this.db.downScore(id, score).then(() => {
      this.db.loadDevelopers();
    });  
  }

  like(id, score){
    this.db.upScore(id, score).then(() => {
      this.db.loadDevelopers();
    });
  }

  best(){
    this.db.loadDevelopersBy("score DESC");
  }

  worst(){
    this.db.loadDevelopersBy("score ASC");
  }
 
}