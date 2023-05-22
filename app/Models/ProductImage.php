<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Concerns\HasUuids;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductImage extends Model
{
    use HasFactory, HasUuids;

    protected $fillable = [
        'id',
        'image_link',
        'product_id',
    ];

    public function product(){
        return $this->belongsTo(Product::class, 'product_id');
    }
}
