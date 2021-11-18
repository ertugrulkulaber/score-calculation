//
//  ViewController.swift
//  basitfikstur
//
//  Created by Ertuğrul Kulaber on 28.09.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bPuanText: UITextField!
    
    @IBOutlet weak var b1PuanText: UITextField!
    
    @IBOutlet weak var rPuanText: UITextField!
    @IBOutlet weak var r1PuanText: UITextField!
    @IBOutlet weak var besLabel: UILabel!
    
    @IBOutlet weak var rizLabel: UILabel!
    
    @IBOutlet weak var makaleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func sonucButton(_ sender: Any) {
        let ilkrakam = Int (bPuanText.text!)!
        let ikincirakam = Int (b1PuanText.text!)!
        let rilkrakam = Int(rPuanText.text!)!
        let rikincirakam = Int (r1PuanText.text!)!
        
      let sonuc = ilkrakam + ikincirakam
        let sonuc1 = rilkrakam + rikincirakam
        besLabel.text = String (sonuc)
        rizLabel.text = String (sonuc1)
        if sonuc > sonuc1 {
            besLabel.text = String (sonuc)
        }else {
            rizLabel.text = String (sonuc1)
        }
        if sonuc > sonuc1 {
            makaleLabel.text = String ("BEŞİKTAŞ BÜYÜK \(Int(sonuc))")
        }else {
            makaleLabel.text = String ("RİZE BÜYÜK  \(Int(sonuc1))")
        }
       
        
    }
   
       

}

