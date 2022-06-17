//
//  ViewController.swift
//  TwoPagesProject
//
//  Created by Mehmet Baturay Yasar on 17/05/2022.
////

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    var arrayImage = [UIImage]()
    var arrayText = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        let uinib = UINib(nibName: "FirstPageCell", bundle: nil)
        tableViewOutlet.register(uinib, forCellReuseIdentifier: "FirstPageCell")
        setupArray()
    }
    
    func setupArray(){
        for i in 1...10 {
            arrayImage.append(UIImage(named: "image\(i)")!)
            arrayText.append("Photos of Nature \(i)")
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayImage.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewOutlet.dequeueReusableCell(withIdentifier: "FirstPageCell", for: indexPath) as! FirstPageCell
        cell.firstPageImage.image = arrayImage[indexPath.row]
        cell.firstPageLabel.text = arrayText[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let st = UIStoryboard(name: "Main", bundle: nil) //
        let secondPageVC = st.instantiateViewController(withIdentifier: "SecondPageViewController") as! SecondPageViewController
        secondPageVC.secondPageImageView = arrayImage[indexPath.row]
        secondPageVC.secondPageTextOutlet = arrayText[indexPath.row]
        secondPageVC.modalPresentationStyle = .fullScreen
        self.present(secondPageVC, animated: true) //
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        225
    }
    
}
