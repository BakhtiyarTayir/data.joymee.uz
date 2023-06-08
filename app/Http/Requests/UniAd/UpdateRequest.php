<?php

namespace App\Http\Requests\UniAd;

use Illuminate\Foundation\Http\FormRequest;

class UpdateRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array|string>
     */
    public function rules(): array
    {
        return [
            'ads_title' => 'string',
            'ads_text' => 'string',
            'ads_id_cat ' => 'integer',
            'ads_images' => 'string',
            'ads_id_user' => 'integer',
            'ads_address' => 'string',
            'ads_latitude' => 'string',
            'ads_longitude' => 'string',
            'ads_city_id' => 'integer',
        ];
    }
}
