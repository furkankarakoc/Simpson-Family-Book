//
//  SimpsonFamily.swift
//  SimpsonBook
//
//  Created by Furkan Karakoc on 21.01.2023.
//

import Foundation
import UIKit

class SimpsonFamily {
    var name : String
    var job : String
    var image : UIImage
    
    init(nameSimpson: String, jobSimpson: String, imageSimpson: UIImage) {
        self.name = nameSimpson
        self.job = jobSimpson
        self.image = imageSimpson
    }
}
