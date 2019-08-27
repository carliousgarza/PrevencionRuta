//
//  ViewControllerUsuario.swift
//  Prevención de Ruta Final
//
//  Created by Carlos Fernando Garza Martinez on 9/26/18.
//  Copyright © 2018 Carlos Fernando Garza Martinez. All rights reserved.
//

import UIKit

class ViewControllerUsuario: UIViewController{
    
    @IBOutlet weak var lbCodigo: UILabel!
    @IBOutlet weak var lbPuntos: UILabel!
    @IBOutlet weak var lbCorreo: UILabel!
    @IBOutlet weak var lbCompleto: UILabel!
    
    @IBOutlet weak var lbPreguntasContestadas: UILabel!
    
    var sCodigo : String = ""
    var sCorreo : String = ""
    
    @IBAction func Reload(_ sender: UISwipeGestureRecognizer) {
        lbPuntos.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 16 {
            lbCompleto.isHidden = false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.lbCorreo.text = sCorreo
        self.lbCodigo.text = sCodigo
        self.lbPuntos.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 16 {
            lbCompleto.isHidden = false
        }
        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
