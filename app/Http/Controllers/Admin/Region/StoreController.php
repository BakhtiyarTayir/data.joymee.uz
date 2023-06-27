<?php

namespace App\Http\Controllers\Admin\Region;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\Region\StoreRequest;
use App\Models\UniRegion;
use Illuminate\Http\Request;

class StoreController extends Controller
{
    public function __invoke(StoreRequest $request)
    {
        $data = $request->validated();
        UniRegion::firstOrCreate($data);
        return redirect()->route('admin.region.index');

    }
}
