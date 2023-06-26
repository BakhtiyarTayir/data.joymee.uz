<?php

namespace App\Http\Controllers\Admin\UniAd;

use App\Http\Controllers\Controller;
use App\Models\Advertisement\Advertisement;
use App\Models\Post;
use App\Models\UniAd;

class DeleteController extends BaseController
{
    public function __invoke(UniAd $ads) {
        $ads->delete();
        return redirect()->route('admin.ads.index');
    }
}
