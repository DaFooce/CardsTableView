//
//  ViewController.swift
//  CardsTableView
//
//  Created by Austin Fooce on 4/13/21.
//  Copyright © 2021 DaFooce. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return defaultDeck.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        cell.textLabel?.text = "\(defaultDeck[indexPath.row])"
        cell.imageView?.image = UIImage(named: defaultDeck[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPatht: IndexPath) -> CGFloat {
        return CGFloat(150)
    }


}

