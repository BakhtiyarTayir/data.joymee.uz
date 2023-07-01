<?php

namespace App\Http\Controllers\Admin\User;

use App\Http\Controllers\Controller;
use App\Models\Client;
use Illuminate\Contracts\Auth\Authenticatable;

class IndexController extends Controller
{
    public function __invoke() {
        $users = Client::all();
        return view('admin.user.index', compact('users'));
    }
}
