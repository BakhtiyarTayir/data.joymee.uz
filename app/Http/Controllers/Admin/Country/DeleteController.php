<?php

namespace App\Http\Controllers\Admin\Country;

use App\Http\Controllers\Controller;
use App\Models\Country;

class DeleteController extends Controller
{
    public function __invoke(Country $country)
    {
        $country->delete();

        return redirect()->route('admin.country.index')->with('success', 'Country deleted successfully.');
    }
}
