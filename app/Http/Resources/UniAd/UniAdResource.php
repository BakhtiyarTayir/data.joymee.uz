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
            'category_id' => $this->ads_id_cat,
            'user_id' => $this->ads_id_user,
            'images' => $this->ads_images,
            'address' => $this->ads_address,
            'latitude' => $this->ads_latitude,
            'longitude' => $this->ads_longitude,
        ];
    }
}
