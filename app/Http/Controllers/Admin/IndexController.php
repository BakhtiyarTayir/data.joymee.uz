<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Post;
use App\Models\Tag;
use App\Models\Client;
use Illuminate\Contracts\Auth\Authenticatable;
use Illuminate\Http\Request;

class IndexController extends Controller
{
    public function __invoke(Authenticatable $user) {

        $data = [];
        $data['usersCount'] = Client::all()->count();
        $data['postsCount'] = Post::all()->count();
        $data['categoriesCount'] = Category::all()->count();
        $data['tagsCount'] = Tag::all()->count();
        return view('admin.main.index', compact('data', 'user'));
    }
}
