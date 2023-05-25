//
//  ViewController.swift
//  Viper-Architecture-Example
//
//  Created by Talha Batuhan Irmalı on 25.05.2023.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var homePresenterObject: ViewToPresenterHomeProtocol?
    var postList:[PostsEntity] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        HomeRouter.execModule(ref: self)
        tableView.delegate = self
        tableView.dataSource = self
    }

}
extension HomeViewController: PresenterToViewHomeProtocol {
    func sendDataToView(postList: [PostsEntity]) {
        DispatchQueue.main.async {
            
        }
    }
}



extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath) as! MainTableViewCell
        
        return cell
    }
    
    
}

