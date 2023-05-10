<?php

namespace App\Http\Controllers;

use App\Models\Role;
use App\Models\User;
use App\Services\Utils\FileServiceInterface;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Traits\ExceptionTrait;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    use ExceptionTrait;

    /*private $fileService;
    public function __construct(FileServiceInterface $fileService)
    {
        $this->fileService = $fileService;
    }*/
    public function login(Request $request)
    {
        $fields = $request->validate([
            'email' => 'required|string',
            'password' => 'required|string',
        ]);
        $user = User::where('email', $fields['email'])->first();
        if(!$user) {
            return $this->throwException('Email Does Not Exist', 400);
        }
        if(!Hash::check($fields['password'], $user->password)) {
            return $this->throwException('Wrong Password!', 400);
        }
        $token = $user->createToken('token', Carbon::now()->addDays(3))->plainTextToken;
        $cookie = cookie('auth_token', $token, 60*24*3, '/', null, false, true, false, 'None');
        return response($user, 201)->withCookie($cookie);
    }
    public function profile(Request $request){
        return Auth::user();
    }
    public function logout(Request $request){
        auth()->user()->tokens()->delete();
        return response('Logout', 201);
    }
}
