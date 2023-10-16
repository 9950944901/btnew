<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class AdminLogin extends Authenticatable
{
    use HasFactory;

    protected $guard = 'admin_logins';

    protected $fillable = ['email', 'password'];

    protected $hidden = ['password', 'remember_token'];

}