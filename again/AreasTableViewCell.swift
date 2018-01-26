//
//  AreasTableViewCell.swift
//  again
//
//  Created by Andrew Lutinskyi on 24.01.2018.
//  Copyright © 2018 Andrew Lutinskyi. All rights reserved.
//

import UIKit

class AreasTableViewCell: UITableViewCell {

    
    @IBOutlet weak var logoImage: UIImageView!

    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var number: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func commonInit(imageName:String, nameOfCell:String, numberOf:String){
        self.backgroundColor = #colorLiteral(red: 0.476841867, green: 0.5048075914, blue: 1, alpha: 1)
        logoImage.image = UIImage(named: imageName)
        name.text = nameOfCell
        number.text = numberOf
    }
    
}
