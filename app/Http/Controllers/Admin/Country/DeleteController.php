<?php

namespace App\Http\Controllers\Admin\City;

use App\Http\Controllers\Controller;
use App\Models\City;
use App\Models\Country;
use Illuminate\Http\Request;

class DeleteController extends Controller
{
    public function __invoke(Country $country)
    {
        $country->delete();

        return redirect()->route('admin.country.index')->with('success', 'Country deleted successfully.');
    }
}
