<?php namespace App\Http\Controllers;

use App\Project;
use Log;
use View;

class PortfolioController extends Controller {

	public function all()
	{
		$projects = Project::with('Images','Tags')->get();
		Log::info('projects loaded '.$projects);
		$project = $projects[0];
		
		Log::info('project '.$project);
		
		Log::info('projects tags '.$project->images()->get());
		
		return response()->json($projects);
	}
	
	public function allSimplified()
	{
		$projects = Project::with('Tags')->select(array('id', 'name','minidescription','image'))->get();
		Log::info('projects loaded '.$projects);
		
		return View::make('pages.portfolio')->with('projects', $projects);
	}
	
	public function project($id=null){
		Log::info('id queried '.$id);
		
		if(!$id){
			Log::info('no id');	
			return null;	
		}else{
			$project = Project::with('Images','Tags')->find($id);
		}
		
		return View::make('pages.project')->with('project', $project);
	}

}
