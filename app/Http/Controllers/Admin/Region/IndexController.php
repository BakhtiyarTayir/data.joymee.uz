<?php

namespace App\Http\Controllers\Admin\Region;

use App\Http\Controllers\Controller;
use App\Models\UniRegion;
use Illuminate\Http\Request;

class IndexController extends Controller
{
    public function __invoke()
    {
        $regions = UniRegion::paginate(20);
        return view('admin.region.index', compact('regions'));
    }
}
