//
//  detailVC.swift
//  SimpsonBook
//
//  Created by Furkan Karakoc on 21.01.2023.
//

import UIKit

class detailVC: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var jobLabel: UILabel!
    
    var selectesSimpson: SimpsonFamily?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = selectesSimpson?.image
        nameLabel.text = selectesSimpson?.name
        jobLabel.text = selectesSimpson?.job
    }
    

}
