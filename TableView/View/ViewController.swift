//
//  ViewController.swift
//  TableView
//
//  Created by Maor Niv on 2/24/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var vgames = [
        GamesABR("Rocket League", "RL", "A car soccer game"),
        GamesABR("Valorant", "Val", "A fun FPS game"),
        GamesABR("League of Legends", "LoL", "A 5 man team game"),
        GamesABR("Lost Ark", "LA", "A mechanical and PVE game"),
        GamesABR("Counter-Strike", "CS", "A 5 man S&D game"),
        GamesABR("EA Sports FC", "FIFA", "The ultimate soccer game"),
        GamesABR("Avatar", "AFOP", "Based off the movie"),
        GamesABR("Prison Architect", "PA", "Designing a prison"),
        GamesABR("The Division", "Div", "A campaign and PVP game"),
        GamesABR("Escape From Tarkov", "EFT", "The hardest game alive")
    ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return vgames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = vgames[indexPath.row].games
        content.secondaryText = vgames[indexPath.row].abr
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
            let deleteAction = UIContextualAction(style: .destructive, title: "Delete") { (_, _, _) in
                print("Deleted" + self.vgames[indexPath.row].games)
                self.vgames.remove(at: indexPath.row)
                tableView.reloadData()
            }
            let config = UISwipeActionsConfiguration(actions: [deleteAction])
            config.performsFirstActionWithFullSwipe = false
            return config
        }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toDetail", sender: indexPath)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail" {
            if let indexPath = sender as? IndexPath,
               let secondViewController = segue.destination as? SecondViewController {
                let selectedGame = vgames[indexPath.row]
                secondViewController.selectedGame = selectedGame
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

