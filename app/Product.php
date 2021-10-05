<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    public function getCategory()
    {
        return Category::find($this ->category_id); 
    }
}
