<?php

namespace App\Http\Resources\UniAd;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class UniAdResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'id' => $this->ads_id,
            'title' => $this->ads_title,
            'ads_alias' => $this->ads_alias,
            'ads_text' => $this->ads_text,
            'category_id' => $this->ads_id_cat,
            'ads_city_id' => $this->ads_city_id,
            'user_id' => $this->ads_id_user,
            'images' => $this->ads_images,
            'ads_price' => $this->ads_price,
            'address' => $this->ads_address,
            'latitude' => $this->ads_latitude,
            'longitude' => $this->ads_longitude,
            'ads_period_publication' => $this->ads_period_publication,
            'ads_status' => $this->ads_status,
            'ads_region_id' => $this->ads_region_id,
            'ads_country_id' => $this->ads_country_id,
            'ads_currency' => $this->ads_currency,
            'ads_period_day' => $this->ads_period_day,
            'ads_area_ids'   => $this->ads_area_ids,
        ];
    }
}

