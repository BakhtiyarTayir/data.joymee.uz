<?php

namespace App\Http\Controllers\Admin\User;

use App\Http\Controllers\Controller;
use App\Models\Client;
use Illuminate\Http\Request;

class DeleteController extends Controller
{
    public function __invoke(Client $user) {
        $user->delete();
        return redirect()->route('admin.user.index');
    }
}
