import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Router } from '@angular/router';
import { User } from '../model/user';
import { Observable } from 'rxjs';
import { AuthData } from '@app/auth.data';
import * as bcrypt from 'bcryptjs';

@Injectable({
    providedIn: 'root'
})

export class AuthService {

  //Url = 'http://localhost:4200';

  private loggedIn = false

  logout() {
    throw new Error("Method not implemented.");
  }
    private _loginUrl = "http://localhost:8081/api/Login";
    private _regUrl = "http://localhost:8081/api/register"

    constructor(private http: HttpClient, private _router: Router){ }

    registerUser(username: String, password: String): Observable<User> {
       
        const user: User = {
            username: username,
            password: password
        };
        return this.http.post<User>(this._regUrl, user);
    }

    loginUser(user){
      return this.http.post<any>(this._loginUrl, user)
        .subscribe(
          res => console.log(res),
          err => console.log(err)

        )
    }

    private loggedInStatus = false;

    isLogged(value: boolean){
      this.loggedInStatus = value;
    }

    get isLoggedIn(){
      return this.loggedInStatus;
    }

    checkUserInfo(username, password) {
      console.log(username, password);
      return this.http.post<AuthData>(this._loginUrl ,{
          username,
          password
      }, {withCredentials: true});
  }// End function

  public static hashPassword(password: string, rounds: number, callback: (error: Error, hash: string) => void){
    bcrypt.hash(password, rounds, (error, hash) => {
      callback(error, hash);
    })
  }

  public static compare(password: string, dbHash: string, callback: (error: string | null, match: boolean | null) => void){
    bcrypt.compare(password, dbHash, (err: Error, match: boolean) => {
      if(match) {
        callback(null, true);
      } else {
        callback('Invalid)', null);
      }
    })
  }

}