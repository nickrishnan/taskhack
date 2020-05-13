//
//  ViewController.swift
//  Task Hack
//
//  Created by Nick Krishnan on 5/12/20.
//  Copyright © 2020 Nick Krishnan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {


    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
            super.viewDidLoad()

            for i in 0...1000 {
                 data.append("\(i)")
            }

            self.tableView.dataSource = self
            self.tableView.delegate = self
       }

    private var data: [String] = []


    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")! //1.

         let text = data[indexPath.row]

         cell.textLabel?.text = text

         return cell
    }



    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return data.count
    }

}

