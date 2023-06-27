<?php

namespace App\Http\Controllers\Admin\Region;

use App\Http\Controllers\Controller;
use App\Models\UniRegion;
use Illuminate\Http\Request;

class DeleteController extends Controller
{
    public function __invoke(UniRegion $region) {
        $region->delete();
        return redirect()->route('admin.region.index');
    }
}
