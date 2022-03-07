//
//  MovieDetailsViewController.swift
//  CodePathiOSClassAssignment1
//
//  Created by Samar Majid on 3/5/22.
//

import UIKit

class MovieDetailsViewController: UIViewController {

    @IBOutlet weak var backdropView: UIImageView!
    
    
    @IBOutlet weak var posterView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    @IBOutlet weak var synopsisLabel: UILabel!
    
    var movie = [String:Any]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = movie["title"] as? String
        synopsisLabel.text = movie["overview"] as? String 

      
    }
    



    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        print("Loading up details screen")
        
        //Find selected movie
        let cell = sender as! UITableViewCell
        let indexPath = tableView.indexPath(for: cell!)
        let movie = movies[indexPath.row]
        
        //Pass selected movie to the details view controller
        let detailsViewController = segue.destination as! MovieDetailsViewController
        detailsViewController.movie = movie
        
        tableView.deselectRow(at: IndexPath, animated: true)
        
    }
  

}
