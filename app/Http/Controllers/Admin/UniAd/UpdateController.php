<?php

namespace App\Http\Controllers\Admin\UniAd;


use App\Http\Requests\Admin\Advertisement\UpdateRequest;
use App\Models\Advertisement\Advertisement;
use App\Models\Post;
use App\Models\UniAd;
use Illuminate\Support\Facades\Storage;

class UpdateController extends BaseController
{
    public function __invoke(UpdateRequest $request, UniAd $ads) {
        $data = $request->validated();

       $ads = $this->service->update($data, $ads);

        return view('admin.ads.show', compact('ads'));
    }
}
