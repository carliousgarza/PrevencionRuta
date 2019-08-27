//
//  ViewController.swift
//  Prevención de Ruta Final
//
//  Created by Carlos Fernando Garza Martinez on 9/26/18.
//  Copyright © 2018 Carlos Fernando Garza Martinez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfCorreo: UITextField!
    @IBOutlet weak var tfCodigo: UITextField!
    
    @IBAction func bAcceso(_ sender: UIButton) {
        UserDefaults.standard.set(tfCorreo.text, forKey: "CORREO")
        UserDefaults.standard.set(tfCodigo.text, forKey: "CODIGO")
        tfCorreo.isEnabled = false
        tfCodigo.isEnabled = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if UserDefaults.standard.string(forKey: "CORREO")?.isEmpty ?? false && UserDefaults.standard.string(forKey: "CODIGO")?.isEmpty ?? false{
            tfCorreo.text = UserDefaults.standard.string(forKey: "CORREO")
            tfCodigo.text = UserDefaults.standard.string(forKey: "CODIGO")
            tfCorreo.isEnabled = false
            tfCodigo.isEnabled = false
        }
        else {
            tfCodigo.isEnabled = true
            tfCorreo.isEnabled = true
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "usuario" {
            let vistaUsuario = segue.destination as! ViewControllerUsuario
            vistaUsuario.sCodigo = self.tfCodigo.text!
            vistaUsuario.sCorreo = self.tfCorreo.text!
        }
    }
}

