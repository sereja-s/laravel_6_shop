<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
	// опишем связь один ко многим (один продукт-много картинок)
	public function images()
	{
		return $this->hasMany('App\ProductImage');
	}

	// описали обратную связь один товар относится к одной категории (или многие к одному)
	public function category()
	{
		return $this->belongsTo('App\Category');
	}
}
