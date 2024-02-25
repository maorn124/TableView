//
//  SecondViewController.swift
//  TableView
//
//  Created by Maor Niv on 2/24/24.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var detailsLabel: UILabel!
    
    var selectedGame: GamesABR?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let selectedGame = selectedGame {
            detailsLabel.text = "\(selectedGame.details) Details"
        } else {
            detailsLabel.text = "No game selected"
            print("selectedGame is nil")
        }
        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
