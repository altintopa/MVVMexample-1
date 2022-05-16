//
//  tblViewCell.swift
//  MVVMexample-1
//
//  Created by Ahmet WOW on 16/05/2022.
//

import UIKit

class tblViewCell: UITableViewCell {

    @IBOutlet weak var lblAge: UILabel!
    @IBOutlet weak var lblName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.frame.size.height = 50
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    func ConfigureCell(with viewModel : CellViewModel) {
        lblName.text = "\(viewModel.firstName)  \(viewModel.lastName)"
        lblAge.text = "\(viewModel.age)"
    }
    
}
