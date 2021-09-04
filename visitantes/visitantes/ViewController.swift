//
//  ViewController.swift
//  visitantes
//
//  Created by Alumno on 03/09/21.
//  Copyright © 2021 Ruben Borbolla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var sldTemperatura: UISlider!
    @IBOutlet weak var lblTemperatura: UILabel!
    @IBOutlet weak var imgResultado: UIImageView!
    @IBOutlet weak var lblResultado: UILabel!
    @IBOutlet weak var btnNuevo: UIButton!
    
    @IBOutlet weak var btnCapturarVisitante: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imgResultado.isHidden = true
        lblResultado.isHidden = true
        btnNuevo.isHidden = true
        btnCapturarVisitante.isEnabled = true
        sldTemperatura.isEnabled = true
    }

    
    @IBAction func doChangeTemperatura(_ sender: Any) {
        lblTemperatura.text = "\(String(format: "%.1f", sldTemperatura.value))°C"
        if sldTemperatura.value >= 38.0 {
            lblTemperatura.textColor = UIColor.red
        } else {
            lblTemperatura.textColor = UIColor.black
        }
    }
    
    @IBAction func doTapCapturar(_ sender: Any) {
        if sldTemperatura.value >= 38.0{
            imgResultado.image = UIImage(named: "cruz")
            lblResultado.text = "Ingreso NO autorizado para \(txtNombre.text!)"
        } else {
            imgResultado.image = UIImage(named: "paloma")
            lblResultado.text = "Ingreso autorizado para \(txtNombre.text!)"
        }
        imgResultado.isHidden = false
        lblResultado.isHidden = false
        btnNuevo.isHidden = false
        btnCapturarVisitante.isEnabled = false
        sldTemperatura.isEnabled = false
        sldTemperatura.tintColor = UIColor.darkGray
    }
    
    @IBAction func doTapNuevo(_ sender: Any) {
        imgResultado.isHidden = true
        lblResultado.isHidden = true
        btnNuevo.isHidden = true
        btnCapturarVisitante.isEnabled = true
        sldTemperatura.isEnabled = true
        txtNombre.text = ""
        sldTemperatura.tintColor = UIColor.blue
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

