//
//  CountryInfoCellTableViewCell.swift
//  Country List
//
//  Created by MacBook Pro on 8/6/21.
//

import UIKit

class CountryInfoCellTableViewCell: UITableViewCell {

    @IBOutlet weak var flagImage: UIImageView!
    @IBOutlet weak var countryName: UILabel!
    
    var loadImage: String = "" {
        didSet {
//            imageView.downloadedSvgImage()
            
            flagImage?.downloadedSvgImage(from: (URL(string: loadImage) ?? URL(string: ""))!, contentMode: .scaleAspectFill)
        }
    }
    var loadCountryName: String = "" {
        didSet {
            countryName.text = loadCountryName
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
    
    static var nib:UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    static var identifier: String {
        return String(describing: self)
    }
    
}
