//
//  MovieCell.swift
//  CombineWithMVVM
//
//  Created by Faraz Haider on 18/01/2021.
//

import UIKit
import SDWebImage

class MovieCell: UITableViewCell {

    @IBOutlet weak var movieIconImageVIew: UIImageView!
    @IBOutlet weak var movieDescription: UILabel!
    @IBOutlet weak var movieTitle: UILabel!
    
    var movieObject: Result!
     {
         didSet
         {
             setupData()
         }
     }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func setupData()
        {
            guard
                let unwrappedMovieName = movieObject.title,
                let unwrappedMovieDetails = movieObject.resultDescription
            else { return }
            
        movieTitle.text = unwrappedMovieName
        movieDescription.text = unwrappedMovieDetails
            
            if
            let unwrappedMovieImage = movieObject.image,
            let imageURL = URL(string: unwrappedMovieImage)
            {
                movieIconImageVIew.activateSdWebImageLoader()
                movieIconImageVIew.sd_setImage(with: imageURL, completed: nil)
            }
            else
            {
                movieIconImageVIew.image = UIImage(named: "placeholder-image")
            }
        }
    
}
