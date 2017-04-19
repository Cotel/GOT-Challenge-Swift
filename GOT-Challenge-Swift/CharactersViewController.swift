//
//  CharactersViewController.swift
//  GOT-Challenge-Swift
//
//  Created by Conrado Mateu Gisbert on 05/03/17.
//  Copyright © 2017 conradomateu. All rights reserved.
//

import UIKit

class CharactersViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!

    var apiclient: FakeCharactersAPIClient = FakeCharactersAPIClient()
    var characters = [Character]() {
        didSet {
            tableView.reloadData()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        configureNavigationBarBackButton()
        configureNavigationBarTitle()
        configTableView()
        apiclient.getAllCharacters { result in
            switch result {
            case .success(let characters):
                self.characters = characters
                break
            case .failure(let error):
                print(error)
                break

            }
        }
    }

    fileprivate func configureNavigationBarTitle() {
        title = "Game of Thrones Challenge"
    }

    fileprivate func configureNavigationBarBackButton() {
        navigationItem.backBarButtonItem = UIBarButtonItem(title:"", style:.plain, target:nil, action:nil)
    }

    func configTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.tableFooterView = UIView()
        tableView.separatorInset = .zero
        tableView.sectionHeaderHeight = 0
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.characterTableViewCell, for: indexPath) 
        let character = characters[(indexPath as NSIndexPath).row]
        cell?.configureForCharacter(character)
        return cell!
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let character = characters[indexPath.row]
        let viewController = R.storyboard.gOT.characterDetailViewController()
        viewController?.character = character
        navigationController?.pushViewController(viewController!, animated: true)
    }

}
