import { Injectable } from '@angular/core';
import {FormGroup, FormBuilder, Validators, FormControl} from "@angular/forms";
import { DomSanitizer } from '@angular/platform-browser';
import { Location } from '@angular/common';

@Injectable({
  providedIn: 'root'
})
export class FormService {

  constructor(public sanitizer: DomSanitizer, private _location: Location) {

   }
  public previsualizacion: string = '';
  public archivos: any = []

  email = new FormControl('', [Validators.required]);
  contraseña =  new FormControl('', [Validators.required])

   emailErrores(){
    let mensaje;
    if((this.email.dirty || this.email.touched) && this.email.errors){
      mensaje = "El campo esta sin llenar";

    }
    if(this.email.hasError('pattern') && this.email.errors){
      mensaje = "El campo esta incorrecto";

    }
    return mensaje;
  }

  passwordErrores(){
    let mensaje;
    if((this.contraseña.dirty || this.contraseña.touched) && this.contraseña.errors){
      mensaje = "El campo esta sin llenar";

     }

     if(this.contraseña.hasError('pattern') && this.contraseña.errors){
      mensaje = "El campo esta incorrecto";

    }

    else if(this.contraseña.hasError('minlength') && this.contraseña.errors){
      mensaje = "El minimo de letras es 8";

    }
    return mensaje;
  }

  goBack() {
    this._location.back();
  }



}
