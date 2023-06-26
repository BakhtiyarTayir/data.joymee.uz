<?php

namespace App\Http\Controllers\Admin\UniAd;


use App\Http\Requests\Admin\Advertisement\StoreRequest;


class StoreController extends BaseController
{
    public function __invoke(StoreRequest $request)
    {
        $data = $request->validated();

        $this->service->store($data);

        return redirect()->route('admin.post.index');

    }
}
