<?php

namespace App\Http\Controllers\Admin\Client;

use App\Http\Controllers\Controller;
use App\Models\Client;
use Illuminate\Http\Request;

class CreateController extends Controller
{
    public function __invoke() {
        $roles = Client::getRoles();
        return view('admin.user.create', compact('roles'));
    }
}
