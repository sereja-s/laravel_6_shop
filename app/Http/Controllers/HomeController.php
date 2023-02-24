<?php

namespace App\Http\Controllers;

use App\Product;
use Illuminate\Http\Request;

class HomeController extends Controller
{
	public function index()
	{
		// в переменную получим товары из соответствующей таблицы (отсортированные по дате создания, кол-во 8 записей)
		$products = Product::orderBy('created_at')->take(12)->get();

		//dd($products);

		return view('home.index', [
			// указываем массив вида: 'название переменной в шаблоне вывода страницы' => 'значение переменной'
			'products' => $products
		]);
	}
}
