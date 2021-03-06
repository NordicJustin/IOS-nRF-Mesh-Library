//
//  ScannerCell.swift
//  nRFMeshProvision_Example
//
//  Created by Mostafa Berg on 30/04/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import Foundation
import UIKit
import nRFMeshProvision

class ScannerCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var advertisementDataLabel: UILabel!
    @IBOutlet weak var rssiLabel: UILabel!
    
    public func showNode(_ aNode: UnprovisionedMeshNode) {
        nameLabel.text = aNode.nodeBLEName()
        advertisementDataLabel.text = nil //Nothing to show
        if aNode.RSSI() != 127 {
            rssiLabel.textColor = UIColor.black
            rssiLabel.text = "\(aNode.RSSI()) dB"
        } else {
            if rssiLabel.text == "RSSI" {
                rssiLabel.text = nil
            }
            rssiLabel.textColor = UIColor.gray
        }
    }
}
