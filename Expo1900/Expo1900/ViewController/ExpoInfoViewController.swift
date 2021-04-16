//
//  Expo1900 - ViewController.swift
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import UIKit

class ExpoInfoViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var visitorsLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var descrtionLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var expo: ExpoInfo

        let jsonDecoder: JSONDecoder = JSONDecoder()
        guard let dataAsset: NSDataAsset = NSDataAsset(name: "text") else {
            return
        }

        do {
            expo = try jsonDecoder.decode(text.self, from: dataAsset.data)
        } catch {
            print(error.localizedDescription)
        }
    }
}
