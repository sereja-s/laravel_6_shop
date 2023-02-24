<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductImagesTable extends Migration
{
	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('product_images', function (Blueprint $table) {
			$table->bigIncrements('id');
			$table->string('img');
			$table->bigInteger('product_id')->unsigned();
			$table->foreign('product_id') // внешний ключ
				->references('id')
				->on('products')
				->onDelete('cascade');
			$table->timestamps();
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::dropIfExists('product_images');
	}
}