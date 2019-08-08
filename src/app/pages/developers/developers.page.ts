import { DatabaseService, Dev } from './../../services/database.service';
import { Component, OnInit } from '@angular/core';
import { Observable } from 'rxjs';
 
@Component({
  selector: 'app-developers',
  templateUrl: './developers.page.html',
  styleUrls: ['./developers.page.scss'],
})
export class DevelopersPage implements OnInit {
 
  developers: Dev[] = [];
 
  products: Observable<any[]>;
 
  developer = {};
  product = {};
 
  selectedView = 'devs';
 
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
 
  addDeveloper() {
    let skills = this.developer['skills'].split(',');
    skills = skills.map(skill => skill.trim());
 

    var today = new Date();
    var date = today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDate();
    var time = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();
    var dateTime = date+' '+time;

    this.db.addDeveloper(this.developer['name'], skills, this.developer['img'], dateTime)
    .then(_ => {
      this.developer = {};
    });
  }
 
  addProduct() {
    this.db.addProduct(this.product['name'], this.product['creator'])
    .then(_ => {
      this.product = {};
    });
  }
 
}