import {Injectable} from '@angular/core';
import {CanActivate, ActivatedRouteSnapshot, RouterStateSnapshot, Router} from '@angular/router';
import {Observable} from 'rxjs';
import {AuthService} from './services/auth.service';
import {ApiService} from './services/api.service';
import {map} from 'rxjs/operators';

@Injectable({
    providedIn: 'root'
})

export class AuthGuard implements CanActivate {
    
    constructor(private auth: AuthService, private router: Router, private api: ApiService) {      
    }

    canActivate(
        next: ActivatedRouteSnapshot,
        state: RouterStateSnapshot): Observable<boolean> | Promise<boolean> | boolean {

        // Make a request to api class to make a request to server to check is the user logged in.
        return this.api.isLoggedIn().pipe(map(res => {
            if (res.status) { // If user is logged in loggedIn = true and return true.
                this.auth.isLogged(true);
                return true;
            } else { // Else navigate to login page.
                this.router.navigate(['/Login']);
                return false;
            }
        }));
    }

}