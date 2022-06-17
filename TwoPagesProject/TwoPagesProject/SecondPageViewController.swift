//
//  SecondPageViewController.swift
//  TwoPagesProject
//
//  Created by Mehmet Baturay Yasar on 17/05/2022.
//

import UIKit

class SecondPageViewController: UIViewController {

    @IBOutlet weak var secondPageImage: UIImageView!
    @IBOutlet weak var secondPageText: UILabel!
    var secondPageImageView: UIImage?
    var secondPageTextOutlet: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        secondPageImage.image = secondPageImageView
        secondPageText.text = secondPageTextOutlet
    }
    
    @IBAction func buttonBackTapped(_ sender: Any) {
        self.dismiss(animated: true)
    }
}
