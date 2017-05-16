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
    var presenter: CharactersPresenter!
    var characters = [Character]() {
        didSet {
            tableView.reloadData()
        }
    }


    override func viewDidLoad() {

        super.viewDidLoad()
        presenter.viewDidLoad()
        setUpView()


    }

    fileprivate func configureNavigationBarTitle() {
        title = "Game of Thrones Challenge"
    }

    fileprivate func configureNavigationBarBackButton() {
        navigationItem.backBarButtonItem = UIBarButtonItem(title:"", style:.plain, target:nil, action:nil)
    }

    func setUpView() {
        configureNavigationBarBackButton()
        configureNavigationBarTitle()
        configTableView()
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
        presenter.didSelectCharacter(characters[indexPath.row])
    }

}
extension CharactersViewController: CharactersListView, IndicatableView {
    func showNoContentScreen() {
    }
    func showCharactersData(characters: [Character]) {
        self.characters = characters
    }
}
