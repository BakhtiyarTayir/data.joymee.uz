<?php

namespace App\Http\Controllers\Admin\Region;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\Region\UpdateRequest;
use App\Models\UniRegion;
use Illuminate\Http\Request;

class UpdateController extends Controller
{
    public function __invoke(UpdateRequest $request, UniRegion $region) {
        $data = $request->validated();
        $region->update($data);
        return view('admin.region.show', compact('region'));
    }
}
