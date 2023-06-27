<?php

namespace App\Http\Controllers\Admin\Region;

use App\Http\Controllers\Controller;
use App\Models\UniRegion;
use Illuminate\Http\Request;

class EditController extends Controller
{
    public function __invoke(UniRegion $region) {
        return view('admin.region.edit', compact('region'));
    }
}
