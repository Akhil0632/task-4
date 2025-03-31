<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use App\Models\User;

class UserController extends Controller
{
    public function fetchAndStoreUsers()
    {
        try {
            $response = Http::get('https://jsonplaceholder.typicode.com/users');
            if ($response->successful()) {
                $users = $response->json();
                foreach ($users as $userData) {
                    User::updateOrCreate(
                        ['email' => $userData['email']],
                        [
                        'name' => $userData['name'],
                        'street' => $userData['address']['street'],
                        'city' => $userData['address']['city']
                        ]
                    );
                }
                return view('users.index', compact('users'))->with('success', 'Users updated successfully!');
            } else {
                return redirect()->route('users.index')->with('error', 'Failed to fetch users.');
            }
        } catch (\Exception $e) {
            return redirect()->route('users.index')->with('error', 'Error: ' . $e->getMessage());
        }
    }  

}
