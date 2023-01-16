//
//  TabBarController.swift
//  theMontyHallProblem
//
//  Created by Valentin Dyrda on 25.10.2022.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabs()
    }
    
    func setupTabs() {
        viewControllers = [GameVC(), statsVC(), SimulationVC(),]
    }
    
    func GameVC() -> UINavigationController {
        let game = GameViewController()
        game.title = "PLAY"
        game.tabBarItem = UITabBarItem(title: "GAME", image: UIImage(systemName: "dice"), tag: 3)
        return UINavigationController(rootViewController: game)
    }
    
    
    func statsVC() -> UINavigationController {
        let stats = StatsVC()
        stats.title = "STATISTICS"
        stats.tabBarItem = UITabBarItem(title: "STATS", image: UIImage(systemName: "chart.xyaxis.line"), tag: 2)
        return UINavigationController(rootViewController: stats)
    }
    
    func SimulationVC() -> UINavigationController {
        let simulation = SimulationViewController()
        simulation.title = "Simulations"
        simulation.tabBarItem = UITabBarItem(title: "SIMULATE", image: UIImage(systemName: "chart.xyaxis.line"), tag: 1)
        return UINavigationController(rootViewController: simulation)
    }
    
}
