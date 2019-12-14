//
//  CloudServiceCell.swift
//  MultiAccountOauthDemo
//
//  Created by Sergey Kudryavtsev on 8/13/17.
//  Copyright © 2017 Thywis inc. All rights reserved.
//

import UIKit

protocol CloudServiceCellDelegate: class {
    func cloudServiceCell(_ cell: CloudServiceCell, authenticateButtonWasPressed button: UIButton)
}

class CloudServiceCell: UITableViewCell {
    
    weak var delegate: CloudServiceCellDelegate?
    
    @IBOutlet weak var authenticateButton: UIButton!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var logoImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        authenticateButton.addTarget(self, action: #selector(CloudServiceCell.authenticateButtonPressed), for: .touchUpInside)
    }
    
    func authenticateButtonPressed() {
        delegate?.cloudServiceCell(self, authenticateButtonWasPressed: authenticateButton)
    }
}
