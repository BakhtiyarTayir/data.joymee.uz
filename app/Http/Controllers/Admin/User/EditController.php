<?php

namespace App\Http\Controllers\Admin\User;

use App\Http\Controllers\Controller;
use App\Models\Client;

class EditController extends Controller
{
    public function __invoke(Client $user) {
        $roles = Client::getRoles();
        return view('admin.user.edit', compact('user', 'roles'));
    }
}
