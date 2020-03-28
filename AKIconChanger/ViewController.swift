//
//  ViewController.swift
//  AKIconChanger
//
//  Created by Ashish Kakkad on 14/03/20.
//  Copyright © 2020 kode. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnILikeTomPressed(_ sender: UIButton) {
        changeIcon(iconName: "TomIcon")
    }

    @IBAction func btnILikeJerryPressed(_ sender: UIButton) {
        changeIcon(iconName: "JerryIcon")
    }

    @IBAction func btnILikeBothPressed(_ sender: UIButton) {
        UIApplication.shared.setAlternateIconName(nil)
    }

    func changeIcon(iconName: String) {
        if UIApplication.shared.supportsAlternateIcons {
            UIApplication.shared.setAlternateIconName(iconName){ error in
                if let error = error {
                    print(error.localizedDescription)
                } else {
                    print("Done!")
                }
            }
        }
    }
}

