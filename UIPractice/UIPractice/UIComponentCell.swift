//
//  UIComponentCell.swift
//  UIPractice
//
//  Created by Amit Ninawe on 13/12/22.
//

import UIKit

protocol ComponentTableViewCellDelegate {
    func didTapGoButton(type: ComponentsType)
    
}


class UIComponentCell: UITableViewCell {

    
    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var buttonText: UIButton!
    var componentType: ComponentsType?
    var delegate: ComponentTableViewCellDelegate?
     
    
    override func awakeFromNib() {
           super.awakeFromNib()
           // Initialization code
       }

       override func setSelected(_ selected: Bool, animated: Bool) {
           super.setSelected(selected, animated: animated)
           // Configure the view for the selected state
       }
       
       func setUp(type: ComponentsType) {
           self.componentType = type
           self.labelText.text = type.rawValue
          // self.buttonText.titleLabel!.text = "Go To \(type.rawValue)"
           //self.buttonText.subtitleLabel!.text = "Go To \(type.rawValue)"
           self.buttonText.setTitle(type.rawValue, for: .normal)
       }

    @IBAction func goButtonTapped() {
        guard let delegate = delegate,
        let type = self.componentType else {return}
        delegate.didTapGoButton(type: type)
          
    }

    
    
}
