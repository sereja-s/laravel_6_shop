<?php

namespace App\Http\Controllers;

use App\Category;
use App\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
	public function show($cat, $product_id)
	{
		$item = Product::where('id', $product_id)->first();

		return view('product.show', [
			'item' => $item
		]);
	}


	public function showCategory(Request $request, $cat_alias)
	{
		// передаём категорию (в вид(страницу): категории), алиас которой совпадает с тем, который пришёл параметром (и берём только первое значение)
		$cat = Category::where('alias', $cat_alias)->first();

		// кол-во выводимых товаров на странице
		$paginate = 3;

		$products = Product::where('category_id', $cat->id)->paginate($paginate);

		// получим значение переменной: orderBy из ajax-запроса
		// проверим применялась ли сортировка
		if (isset($request->orderBy)) {
			// сортировка по цене (от меньшего к большему)
			if ($request->orderBy == 'price-low-high') {
				$products = Product::where('category_id', $cat->id)->orderBy('price')->paginate($paginate);
			}
			// сортировка по цене (от большего к меньшему)
			if ($request->orderBy == 'price-high-low') {
				$products = Product::where('category_id', $cat->id)->orderBy('price', 'desc')->paginate($paginate);
			}
			// прямая сортировка по алфавиту
			if ($request->orderBy == 'name-a-z') {
				$products = Product::where('category_id', $cat->id)->orderBy('title')->paginate($paginate);
			}
			// обратная сортировка по алфавиту
			if ($request->orderBy == 'name-z-a') {
				$products = Product::where('category_id', $cat->id)->orderBy('title', 'desc')->paginate($paginate);
			}
		}

		// если пришёл ajax-запрос
		if ($request->ajax()) {
			// показать вид(страницу) сортировки по которой был сделан запрос
			return view('ajax.order-by', [
				'products' => $products
			])->render(); // метод вернёт готовый(отренденный) HTML-код
		}

		return view('categories.index', [
			'cat' => $cat,
			'products' => $products,
		]);
	}
}
