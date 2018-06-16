//
//  DailyViewController.swift
//  FairWeatherFriend
//
//  Created by VIS Swimming on 14/6/18.
//  Copyright © 2018 TOR. All rights reserved.
//

import UIKit

class DailyViewController: UIViewController {

    @IBOutlet weak var hourlyIconLabel: UILabel!
    @IBOutlet weak var hourlyTempLabel: UILabel!
    @IBOutlet weak var hourlyDateLabel: UILabel!
    @IBOutlet weak var hourlyLocationLabel: UILabel!
    @IBOutlet weak var hourlySummaryLabel: UILabel!
    @IBOutlet weak var hourlyLowTempLabel: UILabel!
    @IBOutlet weak var hourlyHighTempLabel: UILabel!
    @IBOutlet weak var hourlyWindSpeedLabel: UILabel!
    @IBOutlet weak var hourlyWindDirectionLabel: UILabel!
    @IBOutlet weak var hourlyHumidityLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
