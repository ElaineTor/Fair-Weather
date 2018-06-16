//
//  SevenDayTableViewCell.swift
//  FairWeatherFriend
//
//  Created by VIS Swimming on 16/6/18.
//  Copyright © 2018 TOR. All rights reserved.
//

import UIKit

class SevenDayTableViewCell: UITableViewCell {
    
    @IBOutlet weak var sevenDayIconLabel: UILabel!
    @IBOutlet weak var sevenDayDateLabel: UILabel!
    @IBOutlet weak var sevenDaySummaryLabel: UILabel!
    @IBOutlet weak var sevenDayTempLowLabel: UILabel!
    @IBOutlet weak var sevenDayTempHighLabel: UILabel!
    @IBOutlet weak var sevenDayWindSpeedLabel: UILabel!
    @IBOutlet weak var sevenDayWindDirectionLabel: UILabel!
    @IBOutlet weak var sevenDayHumidityLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
