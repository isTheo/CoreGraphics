//
//  ViewController.swift
//  Project27-CoreGraphics
//
//  Created by Matteo Orru on 31/05/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    var currentDrawType = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        drawRectangle()
    }
    
    
    
    @IBAction func redrawTapped(_ sender: UIButton) {
        currentDrawType += 1

        if currentDrawType > 5 {
            currentDrawType = 0
        }

        switch currentDrawType {
        case 0:
            drawRectangle()

        default:
            break
        }
    }
    
    
    
    func drawRectangle() {
        let renderer = UIGraphicsImageRenderer(size: CGSize(width: 512, height: 512))

        let img = renderer.image { ctx in
            // awesome drawing code
        }

        imageView.image = img
    }
    
    
    
}

