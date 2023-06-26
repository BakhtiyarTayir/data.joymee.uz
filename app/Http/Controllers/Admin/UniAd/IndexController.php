<?php

namespace App\Http\Controllers\Admin\UniAd;

use App\Http\Controllers\Controller;
use App\Models\Advertisement\Advertisement;
use App\Models\Post;
use App\Models\UniAd;

class IndexController extends BaseController
{
    public function __invoke() {
        $advertisements  = UniAd::all();
        return view('admin.ads.index', compact('advertisements'));
    }
}
