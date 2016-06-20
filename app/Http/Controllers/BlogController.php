<?php namespace App\Http\Controllers;

use App\Category;
use App\Post;
use Illuminate\Http\Request;
use Log;
use DB;
use View;

class BlogController extends Controller {

	public function all()
	{
		$categories = Category::with('Tags')->get();
		Log::info('categories loaded '.$categories);		
		return response()->json($categories);
	}
	
	public function post($id=null){	
		
		Log::info('id queried '.$id);
		
		if(!$id){
			Log::info('no id');	
			$post = Post::latest()->first();	
		}else{
			$post = Post::with('Tags')->find($id);
		}
		Log::info('post returns '.$post);	
		$categories = Category::with('Tags')->get();		
		return View::make('pages.blog')->with('post', $post)->with('categories',$categories);
	}
	
	public function postsByTag($tag_id){
		Log::info(' tag queried: '.$tag_id);
		$posts = Post::whereHas('tags', function ($query) use ($tag_id) {
			Log::info(' tag queried: '.$tag_id);
			$query->where('tag_id', '=', $tag_id);
		})->get();
		
		Log::info(' posts found: '.$posts);	
		$categories = Category::with('Tags')->get();	
		return View::make('pages.posts')->with('posts', $posts)->with('categories',$categories);
	}
	
	public function postsBySearch(Request $request){
		$q = $request->input('q');
		Log::info('query: '.$q);
		
		$posts = Post::where('title', 'LIKE', '%'.$q.'%')->orWhere('article', 'LIKE','%'.$q.'%')->get();
		Log::info('posts found: '.$posts);	
		$categories = Category::with('Tags')->get();	
		return View::make('pages.posts')->with('posts', $posts)->with('categories',$categories);
	}
	

}
