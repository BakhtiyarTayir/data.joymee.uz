<?php

namespace App\Http\Controllers\Admin\User;

use App\Http\Controllers\Controller;
use App\Models\Client;

class ShowController extends Controller
{
    public function __invoke(Client $user) {
        return view('admin.user.show', compact('user'));
    }
}
