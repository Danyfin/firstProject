<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\Model;

class Feature extends Model
{
    public function products() : BelongsToMany
    {
        return $this->belongsToMany(Product::class, "feature_products")->withPivot('value');
    }
}
