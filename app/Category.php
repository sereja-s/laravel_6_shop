<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
	// опишем связь один ко многим (одна категория-много товаров) и получим все продукты данной категории на странице: категория
	public function products()
	{
		return $this->hasMany('App\Product');
	}
}
