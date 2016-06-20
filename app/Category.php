<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model {

	public function tags(){
        return $this->hasManyThrough('App\Tag', 'App\TagWithCategory', 'category_id', 'id');
    }

}
