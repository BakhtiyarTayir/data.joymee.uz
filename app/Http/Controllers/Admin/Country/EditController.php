<?php

namespace App\Http\Controllers\Admin\City;

use App\Http\Controllers\Controller;
use App\Models\City;
use App\Models\Country;
use Illuminate\Http\Request;

class EditController extends Controller
{
    public function __invoke(Country $country)
    {
        return view('admin.country.edit', compact('country'));
    }
}
