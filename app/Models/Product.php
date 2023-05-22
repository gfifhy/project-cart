<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Concerns\HasUuids;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory, HasUuids;

    protected $fillable = [
        'name',
        'slug',
        'price',
        'stock',
        'attributes',
        'category_id',
        'brand_id'
    ];

    protected $hidden = [
        'deleted_at',
    ];

    public function images() {
        return $this->hasMany(ProductImage::class);
    }
}
