<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class CategoryBoardResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'ads_category_id' => $this->category_board_id,
            'name' => $this->category_board_name,
            'category_board_id_parent' => $this->category_board_id_parent,
        ];
    }
}
