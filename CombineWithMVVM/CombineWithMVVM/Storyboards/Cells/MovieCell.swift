//
//  MovieCell.swift
//  CombineWithMVVM
//
//  Created by Faraz Haider on 18/01/2021.
//

import UIKit

class MovieCell: UITableViewCell {

    @IBOutlet weak var movieIconImageVIew: UIImageView!
    @IBOutlet weak var movieDescription: UILabel!
    @IBOutlet weak var movieTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
