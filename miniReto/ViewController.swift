//
//  ViewController.swift
//  miniReto
//
//  Created by Elias Garza on 10/03/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgDado1: UIImageView!
    @IBOutlet weak var imgDado2: UIImageView!
    
    @IBOutlet weak var lbCounter1: UILabel!
    @IBOutlet weak var lbCounter2: UILabel!
    @IBOutlet weak var lbCounter3: UILabel!
    @IBOutlet weak var lbCounter4: UILabel!
    @IBOutlet weak var lbCounter5: UILabel!
    @IBOutlet weak var lbCounter6: UILabel!
    @IBOutlet weak var lbCounter7: UILabel!
    @IBOutlet weak var lbCounter8: UILabel!
    @IBOutlet weak var lbCounter9: UILabel!
    @IBOutlet weak var lbCounter10: UILabel!
    @IBOutlet weak var lbCounter11: UILabel!
    
    @IBOutlet weak var pv1: UIProgressView!
    @IBOutlet weak var pv2: UIProgressView!
    @IBOutlet weak var pv3: UIProgressView!
    @IBOutlet weak var pv4: UIProgressView!
    @IBOutlet weak var pv5: UIProgressView!
    @IBOutlet weak var pv6: UIProgressView!
    @IBOutlet weak var pv7: UIProgressView!
    @IBOutlet weak var pv8: UIProgressView!
    @IBOutlet weak var pv9: UIProgressView!
    @IBOutlet weak var pv10: UIProgressView!
    @IBOutlet weak var pv11 : UIProgressView!
    
    var sums = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    let dados = ["dado1", "dado2", "dado3", "dado4", "dado5", "dado6"]
    var dado1: Int!
    var dado2: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pv1.setProgress(0.0, animated: false)
        pv2.setProgress(0.0, animated: false)
        pv3.setProgress(0.0, animated: false)
        pv4.setProgress(0.0, animated: false)
        pv5.setProgress(0.0, animated: false)
        pv6.setProgress(0.0, animated: false)
        pv7.setProgress(0.0, animated: false)
        pv8.setProgress(0.0, animated: false)
        pv9.setProgress(0.0, animated: false)
        pv10.setProgress(0.0, animated: false)
        pv11.setProgress(0.0, animated: false)
        
        // Do any additional setup after loading the view.
    }

    @IBAction func lanzarDados(_ sender: UIButton) {
        dado1 = Int.random(in: 1...6)
        dado2 = Int.random(in: 1...6)
        imgDado1.image = UIImage(named: dados[dado1! - 1])
        imgDado2.image = UIImage(named: dados[dado2! - 1])
        sums[(dado1 + dado2) - 2] += 1
        
        switch dado1+dado2 {
        case 2:
            lbCounter1.text = String(sums[0])
            pv1.setProgress(Float(sums[0])/50.0, animated: true)
        case 3:
            lbCounter2.text = String(sums[1])
            pv2.setProgress(Float(sums[1])/50.0, animated: true)
        case 4:
            lbCounter3.text = String(sums[2])
            pv3.setProgress(Float(sums[2])/50.0, animated: true)
        case 5:
            lbCounter4.text = String(sums[3])
            pv4.setProgress(Float(sums[3])/50.0, animated: true)
        case 6:
            lbCounter5.text = String(sums[4])
            pv5.setProgress(Float(sums[4])/50.0, animated: true)
        case 7:
            lbCounter6.text = String(sums[5])
            pv6.setProgress(Float(sums[5])/50.0, animated: true)
        case 8:
            lbCounter7.text = String(sums[6])
            pv7.setProgress(Float(sums[6])/50.0, animated: true)
        case 9:
            lbCounter8.text = String(sums[7])
            pv8.setProgress(Float(sums[7])/50.0, animated: true)
        case 10:
            lbCounter9.text = String(sums[8])
            pv9.setProgress(Float(sums[8])/50.0, animated: true)
        case 11:
            lbCounter10.text = String(sums[9])
            pv10.setProgress(Float(sums[9])/50.0, animated: true)
        case 12:
            lbCounter11.text = String(sums[10])
            pv11.setProgress(Float(sums[10])/50.0, animated: true)
        default:
            break
        }
        
    }
    
}


