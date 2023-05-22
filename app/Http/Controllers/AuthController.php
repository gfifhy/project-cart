<?php

namespace App\Http\Controllers;

use App\Models\Address;
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
    public function register(Request $request) {
        $fields = $request->validate([
            'first_name' => 'required|string',
            'last_name' => 'required|string',
            'email' => 'required|string|unique:users,email',
            'password' => 'required|string|confirmed|min:8',
            'contact_number' => 'required|string|unique:users,contact_number',
            'street' => 'required|string',
            'barangay' => 'required|string',
            'city' => 'required|string',
            'region' => 'required|string',
            'province' => 'required|string',
            'note' => '',
            'zipcode' => 'required|integer'
        ]);

        $address = Address::create([
            'region' => $fields['region'],
            'province' => $fields['province'],
            'city' => $fields['city'],
            'barangay' => $fields['barangay'],
            'street' => $fields['street'],
            'note' => $fields['note'],
            'zipcode' => $fields['zipcode'],
        ]);
        $user = User::create([
            'first_name' => $fields['first_name'],
            'last_name' => $fields['last_name'],
            'contact_number' => $fields['contact_number'],
            'email' => $fields['email'],
            'role_id' => '5762ddd2-dad9-4729-b77a-7b06ea14eb3e',
            'password' => bcrypt($fields['password']),
            'address_id' => $address->id,
        ]);
        $user->address = $address;
        return response($user, 201);
    }
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
