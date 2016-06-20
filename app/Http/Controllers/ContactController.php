<?php namespace App\Http\Controllers;

use App\Category;
use App\Post;
use App\Message;
use Illuminate\Http\Request;
use Log;
use Session;

class ContactController extends Controller {
	
	public function send(Request $request){
		
		$this->validate($request, [
			'name' => 'required',
			'email' => 'required|email',
			'message' => 'required',
		]);

		$name = $request->input('name');
		$email = $request->input('email');
		$comments = $request->input('message');
		
		$message = new Message;	
		$message->name = $name;
		$message->email = $email;
		$message->message = $comments;
		
		Log::info('name: '.$name);
		Log::info('email: '.$email);
		Log::info('message: '.$comments);
		Log::info('Message '.$message);
		
		$message->save();
		Session::flash('success', 'Thank you! Your message has been sent! :)');
		
		return redirect()->route("contactme");	
	}
	

}
