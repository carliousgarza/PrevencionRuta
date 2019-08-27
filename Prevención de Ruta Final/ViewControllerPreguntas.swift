//
//  ViewControllerPreguntas.swift
//  Prevención de Ruta Final
//
//  Created by Carlos Fernando Garza Martinez on 9/27/18.
//  Copyright © 2018 Carlos Fernando Garza Martinez. All rights reserved.
//

import UIKit

class ViewControllerPreguntas: UIViewController {
    
    @IBOutlet weak var lbPreguntas: UILabel!
    @IBOutlet weak var lbPuntosTotales: UILabel!
    @IBOutlet weak var bButtonComenzar: UIButton!
    
    @IBOutlet weak var lbOpcion1: UILabel!
    @IBOutlet weak var lbOpcion2: UILabel!
    @IBOutlet weak var lbOpcion3: UILabel!
    @IBOutlet weak var lbOpcion4: UILabel!
    
    @IBOutlet weak var bButtonOpcion1: UIButton!
    @IBOutlet weak var bButtonOpcion2: UIButton!
    @IBOutlet weak var bButtonOpcion3: UIButton!
    @IBOutlet weak var bButtonOpcion4: UIButton!
    
    var mPreguntas = [String]()
    let sPreg1 = "En caso de que una persona tenga una obstrucción en la vía aérea que se hace?"
    let sPreg2 = "¿En qué consiste la maniobra Heimlich?"
    let sPreg3 = "¿En qué dirección deben de ir las manos para que que la maniobra heimlich se realice correctamente?"
    let sPreg4 = "¿En un adultos cuál es la secuencia correcta de realizar las compresiones?"
    let sPreg5 = "¿Cual es el primer paso para realizar el RCP?"
    let sPreg6 = "¿En qué canción está basado el ritmo para hacer la técnica de RCP?"
    let sPreg7 = "En caso de que algún compañero se caiga de una moto y se raspe alguna área del cuerpo, ¿qué es lo primero que se debe colocar en una herida o quemadura?"
    let sPreg8 = "¿Cuál es número al cual se debe llamara en cualquier tipo de emergencia?"
    let sPreg9 = "Una vez activado el sistema de emergencias, que es lo que se debe hacer a la herida mientras llega la ayuda profesional "
    let sPreg10 = "Como se debe inmovilizar una lesión en la muñeca?"
    let sPreg11 = "Como es la posición de reposo?"
    let sPreg12 = "Como se debe tratar una fractura expuesta?"
    let sPreg13 = "Qué es lo primero que debes hacer al ver una persona inconsciente? "
    let sPreg14 = "Si una persona está lastimada en un área riesgosa que es lo que debes hacer?"
    let sPreg15 = "En caso de que un compañero se revuelque en un carrito y ves que está segura el área como lo mueves? "
    
    var mRespuestas = [String]()
    let sResp1a = "Dejarla toser"
    let sResp1b = "Darle agua"
    let sResp1c = "Realizar la maniobra de Heimlich"
    let sResp1d = "Darle golpes en la espalda"
    
    let sResp2a = "Dar palmadas en la espalda"
    let sResp2b = "Acostar a la persona en el suelo y apretar el pecho"
    let sResp2c = "Dar respiración boca a boca"
    let sResp2d = "Comprimir la zona abdominal y presionar hacia el centro del estómago"
    
    let sResp3a = "De lado a lado "
    let sResp3b = "De manera circular"
    let sResp3c = "De abajo hacia arriba"
    let sResp3d = "No se mueven las manos"
    
    let sResp4a = "30 compresiones, 2 respiraciones, 10 veces"
    let sResp4b = "15 compresiones, 2 respiraciones, 5 veces"
    let sResp4c = "30 compresiones , 2 respiraciones, 5 veces"
    let sResp4d = "15 compresiones, 2 respiraciones, 10 veces"
    
    let sResp5a = "Llamar al 911"
    let sResp5b = "Revisar si la persona afectada tiene pulso"
    let sResp5c = "Evaluar la escena."
    let sResp5d = "Empezar a realizar las compresiones."
    
    let sResp6a = "Stayin Alive"
    let sResp6b = "Vive, vive"
    let sResp6c = "No se sigue ningun ritmo"
    let sResp6d = "How deep is your love"
    
    let sResp7a = "Crema"
    let sResp7b = "Bolsa de hielo"
    let sResp7c = "Agua fría constante"
    let sResp7d = "Limpiar la herida con una gasa"
    
    let sResp8a = "911"
    let sResp8b = "066"
    let sResp8c = "199"
    let sResp8d = "060"
    
    let sResp9a = "Cubrir con una camiseta no importa si está sucia "
    let sResp9b = "Cubrir con una gasa o cualquier tipo de vendaje limpio"
    let sResp9c = "Cubrir con un trapo"
    let sResp9d = "Dejar la herida expuesta "
    
    let sResp10a = "Se pone una venda directamente en la muñeca, y vas dando vueltas en forma de 8 por la palma de la mano y la muñeca."
    let sResp10b = "Se pone una venda dando vueltas solo por la muñeca."
    let sResp10c = "Se ponen hielos sobre la lesión para minimizar inflamación."
    let sResp10d = "Se aplica un ungüento sobre la lesión para minimizar dolor."
    
    let sResp11a = "Acostado completamente sobre su espalda"
    let sResp11b = "Un brazo estirado, la cabeza sobre ese brazo, el otro brazo y la pierna superior tocando el suelo para mantener balance"
    let sResp11c = "Acostado boca abajo"
    let sResp11d = "Sentado sobre una silla"
    
    let sResp12a = "Lavar con alcohol o algún tipo de antibacterial y taparla"
    let sResp12b = "Taparla con un trapo, independientemente de si está sucia o no"
    let sResp12c = "Regresar a su lugar el hueso expuesto"
    let sResp12d = "Lavar ligeramente con agua y tapar con un trapo húmedo"
    
    let sResp13a = "Revisar su estado de conciencia "
    let sResp13b = "Correr a moverlo de donde está "
    let sResp13c = "No hacer nada"
    let sResp13d = "Arrastrarlo de las piernas"
    
    let sResp14a = "Llamar al 911 y no ponerte en riesgo "
    let sResp14b = "Intentar salvar a la persona aunque no sea seguro"
    let sResp14c = "No hacer nada e irte"
    let sResp14d = "Quedarte viendo "
    
    let sResp15a = "Lo sacas como puedas del carrito con todo el equipo"
    let sResp15b = "Le intentas quitar casco y goggles para ver si responde"
    let sResp15c = "Sin quitarle en equipo lo mueves con cuidado para estar seguro que el area no está en riesgo"
    let sResp15d = "Lo dejas ahí"
    
    //-----------------------------------------------------------------------------------------------------------------------------------------------------------A
    @IBAction func bOpcion1(_ sender: UIButton) {
        if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 1{
            UserDefaults.standard.set(2, forKey: "NUMERODEPREGUNTA")
            self.lbPreguntas.text = sPreg2
            self.lbOpcion1.text = sResp2a
            self.lbOpcion2.text = sResp2b
            self.lbOpcion3.text = sResp2c
            self.lbOpcion4.text = sResp2d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 2 {
            UserDefaults.standard.set(3, forKey: "NUMERODEPREGUNTA")
            self.lbPreguntas.text = sPreg3
            self.lbOpcion1.text = sResp3a
            self.lbOpcion2.text = sResp3b
            self.lbOpcion3.text = sResp3c
            self.lbOpcion4.text = sResp3d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 3 {
            UserDefaults.standard.set(4, forKey: "NUMERODEPREGUNTA")
            self.lbPreguntas.text = sPreg4
            self.lbOpcion1.text = sResp4a
            self.lbOpcion2.text = sResp4b
            self.lbOpcion3.text = sResp4c
            self.lbOpcion4.text = sResp4d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 4 {
            UserDefaults.standard.set(5, forKey: "NUMERODEPREGUNTA")
            self.lbPreguntas.text = sPreg5
            self.lbOpcion1.text = sResp5a
            self.lbOpcion2.text = sResp5b
            self.lbOpcion3.text = sResp5c
            self.lbOpcion4.text = sResp5d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 5 {
            UserDefaults.standard.set(6, forKey: "NUMERODEPREGUNTA")
            self.lbPreguntas.text = sPreg6
            self.lbOpcion1.text = sResp6a
            self.lbOpcion2.text = sResp6b
            self.lbOpcion3.text = sResp6c
            self.lbOpcion4.text = sResp6d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 6 {
            UserDefaults.standard.set(7, forKey: "NUMERODEPREGUNTA")
            UserDefaults.standard.set(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES") + 1, forKey: "PUNTOSTOTALES")
            self.lbPreguntas.text = sPreg7
            self.lbOpcion1.text = sResp7a
            self.lbOpcion2.text = sResp7b
            self.lbOpcion3.text = sResp7c
            self.lbOpcion4.text = sResp7d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 7 {
            UserDefaults.standard.set(8, forKey: "NUMERODEPREGUNTA")
            self.lbPreguntas.text = sPreg8
            self.lbOpcion1.text = sResp8a
            self.lbOpcion2.text = sResp8b
            self.lbOpcion3.text = sResp8c
            self.lbOpcion4.text = sResp8d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 8 {
            UserDefaults.standard.set(9, forKey: "NUMERODEPREGUNTA")
            UserDefaults.standard.set(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES") + 1, forKey: "PUNTOSTOTALES")
            self.lbPreguntas.text = sPreg9
            self.lbOpcion1.text = sResp9a
            self.lbOpcion2.text = sResp9b
            self.lbOpcion3.text = sResp9c
            self.lbOpcion4.text = sResp9d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 9{
            UserDefaults.standard.set(10, forKey: "NUMERODEPREGUNTA")
            self.lbPreguntas.text = sPreg10
            self.lbOpcion1.text = sResp10a
            self.lbOpcion2.text = sResp10b
            self.lbOpcion3.text = sResp10c
            self.lbOpcion4.text = sResp10d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 10{
            UserDefaults.standard.set(11, forKey: "NUMERODEPREGUNTA")
            UserDefaults.standard.set(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES") + 1, forKey: "PUNTOSTOTALES")
            self.lbPreguntas.text = sPreg11
            self.lbOpcion1.text = sResp11a
            self.lbOpcion2.text = sResp11b
            self.lbOpcion3.text = sResp11c
            self.lbOpcion4.text = sResp11d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 11{
            UserDefaults.standard.set(12, forKey: "NUMERODEPREGUNTA")
            self.lbPreguntas.text = sPreg12
            self.lbOpcion1.text = sResp12a
            self.lbOpcion2.text = sResp12b
            self.lbOpcion3.text = sResp12c
            self.lbOpcion4.text = sResp12d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 12{
            UserDefaults.standard.set(13, forKey: "NUMERODEPREGUNTA")
            self.lbPreguntas.text = sPreg13
            self.lbOpcion1.text = sResp13a
            self.lbOpcion2.text = sResp13b
            self.lbOpcion3.text = sResp13c
            self.lbOpcion4.text = sResp13d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 13{
            UserDefaults.standard.set(14, forKey: "NUMERODEPREGUNTA")
            UserDefaults.standard.set(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES") + 1, forKey: "PUNTOSTOTALES")
            self.lbPreguntas.text = sPreg14
            self.lbOpcion1.text = sResp14a
            self.lbOpcion2.text = sResp14b
            self.lbOpcion3.text = sResp14c
            self.lbOpcion4.text = sResp14d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 14{
            UserDefaults.standard.set(15, forKey: "NUMERODEPREGUNTA")
            UserDefaults.standard.set(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES") + 1, forKey: "PUNTOSTOTALES")
            self.lbPreguntas.text = sPreg15
            self.lbOpcion1.text = sResp15a
            self.lbOpcion2.text = sResp15b
            self.lbOpcion3.text = sResp15c
            self.lbOpcion4.text = sResp15d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 15{
            UserDefaults.standard.set(16, forKey: "NUMERODEPREGUNTA")
            self.lbPreguntas.text = "¡Gracias por contestar!"
            self.lbOpcion1.isHidden = true
            self.lbOpcion2.isHidden = true
            self.lbOpcion3.isHidden = true
            self.lbOpcion4.isHidden = true
            self.bButtonOpcion1.isHidden = true
            self.bButtonOpcion2.isHidden = true
            self.bButtonOpcion3.isHidden = true
            self.bButtonOpcion4.isHidden = true
        }
    }
    
    //-----------------------------------------------------------------------------------------------------------------------------------------------------------B
    @IBAction func bOpcion2(_ sender: UIButton) {
        if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 1{
            UserDefaults.standard.set(2, forKey: "NUMERODEPREGUNTA")
            self.lbPreguntas.text = sPreg2
            self.lbOpcion1.text = sResp2a
            self.lbOpcion2.text = sResp2b
            self.lbOpcion3.text = sResp2c
            self.lbOpcion4.text = sResp2d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 2 {
            UserDefaults.standard.set(3, forKey: "NUMERODEPREGUNTA")
            self.lbPreguntas.text = sPreg3
            self.lbOpcion1.text = sResp3a
            self.lbOpcion2.text = sResp3b
            self.lbOpcion3.text = sResp3c
            self.lbOpcion4.text = sResp3d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 3 {
            UserDefaults.standard.set(4, forKey: "NUMERODEPREGUNTA")
            self.lbPreguntas.text = sPreg4
            self.lbOpcion1.text = sResp4a
            self.lbOpcion2.text = sResp4b
            self.lbOpcion3.text = sResp4c
            self.lbOpcion4.text = sResp4d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 4 {
            UserDefaults.standard.set(5, forKey: "NUMERODEPREGUNTA")
            self.lbPreguntas.text = sPreg5
            self.lbOpcion1.text = sResp5a
            self.lbOpcion2.text = sResp5b
            self.lbOpcion3.text = sResp5c
            self.lbOpcion4.text = sResp5d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 5 {
            UserDefaults.standard.set(6, forKey: "NUMERODEPREGUNTA")
            self.lbPreguntas.text = sPreg6
            self.lbOpcion1.text = sResp6a
            self.lbOpcion2.text = sResp6b
            self.lbOpcion3.text = sResp6c
            self.lbOpcion4.text = sResp6d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 6 {
            UserDefaults.standard.set(7, forKey: "NUMERODEPREGUNTA")
            self.lbPreguntas.text = sPreg7
            self.lbOpcion1.text = sResp7a
            self.lbOpcion2.text = sResp7b
            self.lbOpcion3.text = sResp7c
            self.lbOpcion4.text = sResp7d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 7 {
            UserDefaults.standard.set(8, forKey: "NUMERODEPREGUNTA")
            self.lbPreguntas.text = sPreg8
            self.lbOpcion1.text = sResp8a
            self.lbOpcion2.text = sResp8b
            self.lbOpcion3.text = sResp8c
            self.lbOpcion4.text = sResp8d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 8 {
            UserDefaults.standard.set(9, forKey: "NUMERODEPREGUNTA")
            self.lbPreguntas.text = sPreg9
            self.lbOpcion1.text = sResp9a
            self.lbOpcion2.text = sResp9b
            self.lbOpcion3.text = sResp9c
            self.lbOpcion4.text = sResp9d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 9{
            UserDefaults.standard.set(10, forKey: "NUMERODEPREGUNTA")
            UserDefaults.standard.set(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES") + 1, forKey: "PUNTOSTOTALES")
            self.lbPreguntas.text = sPreg10
            self.lbOpcion1.text = sResp10a
            self.lbOpcion2.text = sResp10b
            self.lbOpcion3.text = sResp10c
            self.lbOpcion4.text = sResp10d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 10{
            UserDefaults.standard.set(11, forKey: "NUMERODEPREGUNTA")
            self.lbPreguntas.text = sPreg11
            self.lbOpcion1.text = sResp11a
            self.lbOpcion2.text = sResp11b
            self.lbOpcion3.text = sResp11c
            self.lbOpcion4.text = sResp11d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 11{
            UserDefaults.standard.set(12, forKey: "NUMERODEPREGUNTA")
            UserDefaults.standard.set(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES") + 1, forKey: "PUNTOSTOTALES")
            self.lbPreguntas.text = sPreg12
            self.lbOpcion1.text = sResp12a
            self.lbOpcion2.text = sResp12b
            self.lbOpcion3.text = sResp12c
            self.lbOpcion4.text = sResp12d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 12{
            UserDefaults.standard.set(13, forKey: "NUMERODEPREGUNTA")
            self.lbPreguntas.text = sPreg13
            self.lbOpcion1.text = sResp13a
            self.lbOpcion2.text = sResp13b
            self.lbOpcion3.text = sResp13c
            self.lbOpcion4.text = sResp13d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 13{
            UserDefaults.standard.set(14, forKey: "NUMERODEPREGUNTA")
            self.lbPreguntas.text = sPreg14
            self.lbOpcion1.text = sResp14a
            self.lbOpcion2.text = sResp14b
            self.lbOpcion3.text = sResp14c
            self.lbOpcion4.text = sResp14d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 14{
            UserDefaults.standard.set(15, forKey: "NUMERODEPREGUNTA")
            self.lbPreguntas.text = sPreg15
            self.lbOpcion1.text = sResp15a
            self.lbOpcion2.text = sResp15b
            self.lbOpcion3.text = sResp15c
            self.lbOpcion4.text = sResp15d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 15{
            UserDefaults.standard.set(16, forKey: "NUMERODEPREGUNTA")
            self.lbPreguntas.text = "¡Gracias por contestar!"
            self.lbOpcion1.isHidden = true
            self.lbOpcion2.isHidden = true
            self.lbOpcion3.isHidden = true
            self.lbOpcion4.isHidden = true
            self.bButtonOpcion1.isHidden = true
            self.bButtonOpcion2.isHidden = true
            self.bButtonOpcion3.isHidden = true
            self.bButtonOpcion4.isHidden = true
        }
    }
    
    //-----------------------------------------------------------------------------------------------------------------------------------------------------------C
    @IBAction func bOpcion3(_ sender: UIButton) {
        if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 1{
            UserDefaults.standard.set(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES") + 1, forKey: "PUNTOSTOTALES")
            UserDefaults.standard.set(2, forKey: "NUMERODEPREGUNTA")
            self.lbPreguntas.text = sPreg2
            self.lbOpcion1.text = sResp2a
            self.lbOpcion2.text = sResp2b
            self.lbOpcion3.text = sResp2c
            self.lbOpcion4.text = sResp2d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 2 {
            UserDefaults.standard.set(3, forKey: "NUMERODEPREGUNTA")
            self.lbPreguntas.text = sPreg3
            self.lbOpcion1.text = sResp3a
            self.lbOpcion2.text = sResp3b
            self.lbOpcion3.text = sResp3c
            self.lbOpcion4.text = sResp3d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 3 {
            UserDefaults.standard.set(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES") + 1, forKey: "PUNTOSTOTALES")
            UserDefaults.standard.set(4, forKey: "NUMERODEPREGUNTA")
            self.lbPreguntas.text = sPreg4
            self.lbOpcion1.text = sResp4a
            self.lbOpcion2.text = sResp4b
            self.lbOpcion3.text = sResp4c
            self.lbOpcion4.text = sResp4d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 4 {
            UserDefaults.standard.set(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES") + 1, forKey: "PUNTOSTOTALES")
            UserDefaults.standard.set(5, forKey: "NUMERODEPREGUNTA")
            self.lbPreguntas.text = sPreg5
            self.lbOpcion1.text = sResp5a
            self.lbOpcion2.text = sResp5b
            self.lbOpcion3.text = sResp5c
            self.lbOpcion4.text = sResp5d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 5 {
            UserDefaults.standard.set(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES") + 1, forKey: "PUNTOSTOTALES")
            UserDefaults.standard.set(6, forKey: "NUMERODEPREGUNTA")
            self.lbPreguntas.text = sPreg6
            self.lbOpcion1.text = sResp6a
            self.lbOpcion2.text = sResp6b
            self.lbOpcion3.text = sResp6c
            self.lbOpcion4.text = sResp6d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 6 {
            UserDefaults.standard.set(7, forKey: "NUMERODEPREGUNTA")
            self.lbPreguntas.text = sPreg7
            self.lbOpcion1.text = sResp7a
            self.lbOpcion2.text = sResp7b
            self.lbOpcion3.text = sResp7c
            self.lbOpcion4.text = sResp7d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 7 {
            UserDefaults.standard.set(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES") + 1, forKey: "PUNTOSTOTALES")
            UserDefaults.standard.set(8, forKey: "NUMERODEPREGUNTA")
            self.lbPreguntas.text = sPreg8
            self.lbOpcion1.text = sResp8a
            self.lbOpcion2.text = sResp8b
            self.lbOpcion3.text = sResp8c
            self.lbOpcion4.text = sResp8d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 8 {
            UserDefaults.standard.set(9, forKey: "NUMERODEPREGUNTA")
            self.lbPreguntas.text = sPreg9
            self.lbOpcion1.text = sResp9a
            self.lbOpcion2.text = sResp9b
            self.lbOpcion3.text = sResp9c
            self.lbOpcion4.text = sResp9d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 9{
            UserDefaults.standard.set(10, forKey: "NUMERODEPREGUNTA")
            UserDefaults.standard.set(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES") + 1, forKey: "PUNTOSTOTALES")
            self.lbPreguntas.text = sPreg10
            self.lbOpcion1.text = sResp10a
            self.lbOpcion2.text = sResp10b
            self.lbOpcion3.text = sResp10c
            self.lbOpcion4.text = sResp10d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 10{
            UserDefaults.standard.set(11, forKey: "NUMERODEPREGUNTA")
            self.lbPreguntas.text = sPreg11
            self.lbOpcion1.text = sResp11a
            self.lbOpcion2.text = sResp11b
            self.lbOpcion3.text = sResp11c
            self.lbOpcion4.text = sResp11d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 11{
            UserDefaults.standard.set(12, forKey: "NUMERODEPREGUNTA")
            self.lbPreguntas.text = sPreg12
            self.lbOpcion1.text = sResp12a
            self.lbOpcion2.text = sResp12b
            self.lbOpcion3.text = sResp12c
            self.lbOpcion4.text = sResp12d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 12{
            UserDefaults.standard.set(13, forKey: "NUMERODEPREGUNTA")
            self.lbPreguntas.text = sPreg13
            self.lbOpcion1.text = sResp13a
            self.lbOpcion2.text = sResp13b
            self.lbOpcion3.text = sResp13c
            self.lbOpcion4.text = sResp13d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 13{
            UserDefaults.standard.set(14, forKey: "NUMERODEPREGUNTA")
            self.lbPreguntas.text = sPreg14
            self.lbOpcion1.text = sResp14a
            self.lbOpcion2.text = sResp14b
            self.lbOpcion3.text = sResp14c
            self.lbOpcion4.text = sResp14d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 14{
            UserDefaults.standard.set(15, forKey: "NUMERODEPREGUNTA")
            self.lbPreguntas.text = sPreg15
            self.lbOpcion1.text = sResp15a
            self.lbOpcion2.text = sResp15b
            self.lbOpcion3.text = sResp15c
            self.lbOpcion4.text = sResp15d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 15{
            UserDefaults.standard.set(16, forKey: "NUMERODEPREGUNTA")
            UserDefaults.standard.set(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES") + 1, forKey: "PUNTOSTOTALES")
            self.lbPreguntas.text = "¡Gracias por contestar!"
            self.lbOpcion1.isHidden = true
            self.lbOpcion2.isHidden = true
            self.lbOpcion3.isHidden = true
            self.lbOpcion4.isHidden = true
            self.bButtonOpcion1.isHidden = true
            self.bButtonOpcion2.isHidden = true
            self.bButtonOpcion3.isHidden = true
            self.bButtonOpcion4.isHidden = true
        }
    }
    
    //-----------------------------------------------------------------------------------------------------------------------------------------------------------D
    @IBAction func bOpcion4(_ sender: UIButton) {
        if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 1{
            UserDefaults.standard.set(2, forKey: "NUMERODEPREGUNTA")
            self.lbPreguntas.text = sPreg2
            self.lbOpcion1.text = sResp2a
            self.lbOpcion2.text = sResp2b
            self.lbOpcion3.text = sResp2c
            self.lbOpcion4.text = sResp2d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 2 {
            UserDefaults.standard.set(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES") + 1, forKey: "PUNTOSTOTALES")
            UserDefaults.standard.set(3, forKey: "NUMERODEPREGUNTA")
            self.lbPreguntas.text = sPreg3
            self.lbOpcion1.text = sResp3a
            self.lbOpcion2.text = sResp3b
            self.lbOpcion3.text = sResp3c
            self.lbOpcion4.text = sResp3d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 3 {
            UserDefaults.standard.set(4, forKey: "NUMERODEPREGUNTA")
            self.lbPreguntas.text = sPreg4
            self.lbOpcion1.text = sResp4a
            self.lbOpcion2.text = sResp4b
            self.lbOpcion3.text = sResp4c
            self.lbOpcion4.text = sResp4d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 4 {
            UserDefaults.standard.set(5, forKey: "NUMERODEPREGUNTA")
            self.lbPreguntas.text = sPreg5
            self.lbOpcion1.text = sResp5a
            self.lbOpcion2.text = sResp5b
            self.lbOpcion3.text = sResp5c
            self.lbOpcion4.text = sResp5d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 5 {
            UserDefaults.standard.set(6, forKey: "NUMERODEPREGUNTA")
            self.lbPreguntas.text = sPreg6
            self.lbOpcion1.text = sResp6a
            self.lbOpcion2.text = sResp6b
            self.lbOpcion3.text = sResp6c
            self.lbOpcion4.text = sResp6d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 6 {
            UserDefaults.standard.set(7, forKey: "NUMERODEPREGUNTA")
            self.lbPreguntas.text = sPreg7
            self.lbOpcion1.text = sResp7a
            self.lbOpcion2.text = sResp7b
            self.lbOpcion3.text = sResp7c
            self.lbOpcion4.text = sResp7d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 7 {
            UserDefaults.standard.set(8, forKey: "NUMERODEPREGUNTA")
            self.lbPreguntas.text = sPreg8
            self.lbOpcion1.text = sResp8a
            self.lbOpcion2.text = sResp8b
            self.lbOpcion3.text = sResp8c
            self.lbOpcion4.text = sResp8d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 8 {
            UserDefaults.standard.set(9, forKey: "NUMERODEPREGUNTA")
            self.lbPreguntas.text = sPreg9
            self.lbOpcion1.text = sResp9a
            self.lbOpcion2.text = sResp9b
            self.lbOpcion3.text = sResp9c
            self.lbOpcion4.text = sResp9d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 9{
            UserDefaults.standard.set(10, forKey: "NUMERODEPREGUNTA")
            self.lbPreguntas.text = sPreg10
            self.lbOpcion1.text = sResp10a
            self.lbOpcion2.text = sResp10b
            self.lbOpcion3.text = sResp10c
            self.lbOpcion4.text = sResp10d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 10{
            UserDefaults.standard.set(11, forKey: "NUMERODEPREGUNTA")
            self.lbPreguntas.text = sPreg11
            self.lbOpcion1.text = sResp11a
            self.lbOpcion2.text = sResp11b
            self.lbOpcion3.text = sResp11c
            self.lbOpcion4.text = sResp11d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 11{
            UserDefaults.standard.set(12, forKey: "NUMERODEPREGUNTA")
            self.lbPreguntas.text = sPreg12
            self.lbOpcion1.text = sResp12a
            self.lbOpcion2.text = sResp12b
            self.lbOpcion3.text = sResp12c
            self.lbOpcion4.text = sResp12d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 12{
            UserDefaults.standard.set(13, forKey: "NUMERODEPREGUNTA")
            UserDefaults.standard.set(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES") + 1, forKey: "PUNTOSTOTALES")
            self.lbPreguntas.text = sPreg13
            self.lbOpcion1.text = sResp13a
            self.lbOpcion2.text = sResp13b
            self.lbOpcion3.text = sResp13c
            self.lbOpcion4.text = sResp13d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 13{
            UserDefaults.standard.set(14, forKey: "NUMERODEPREGUNTA")
            self.lbPreguntas.text = sPreg14
            self.lbOpcion1.text = sResp14a
            self.lbOpcion2.text = sResp14b
            self.lbOpcion3.text = sResp14c
            self.lbOpcion4.text = sResp14d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 14{
            UserDefaults.standard.set(15, forKey: "NUMERODEPREGUNTA")
            self.lbPreguntas.text = sPreg15
            self.lbOpcion1.text = sResp15a
            self.lbOpcion2.text = sResp15b
            self.lbOpcion3.text = sResp15c
            self.lbOpcion4.text = sResp15d
            self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
            self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") == 15{
            UserDefaults.standard.set(16, forKey: "NUMERODEPREGUNTA")
            self.lbPreguntas.text = "¡Gracias por contestar!"
            self.lbOpcion1.isHidden = true
            self.lbOpcion2.isHidden = true
            self.lbOpcion3.isHidden = true
            self.lbOpcion4.isHidden = true
            self.bButtonOpcion1.isHidden = true
            self.bButtonOpcion2.isHidden = true
            self.bButtonOpcion3.isHidden = true
            self.bButtonOpcion4.isHidden = true
        }
    }
    
    @IBAction func bComenzar(_ sender: UIButton) {
        UserDefaults.standard.set(1, forKey: "NUMERODEPREGUNTA")
        UserDefaults.standard.set(0, forKey: "PUNTOSTOTALES")
        self.bButtonComenzar.isHidden=true
        self.bButtonComenzar.isEnabled=true
        self.lbPreguntas.text = mPreguntas[0]
        self.lbOpcion1.isHidden = false
        self.lbOpcion2.isHidden = false
        self.lbOpcion3.isHidden = false
        self.lbOpcion4.isHidden = false
        self.bButtonOpcion1.isHidden = false
        self.bButtonOpcion2.isHidden = false
        self.bButtonOpcion3.isHidden = false
        self.bButtonOpcion4.isHidden = false
        self.lbPuntosTotales.text = "0"
        self.lbOpcion1.text = sResp1a
        self.lbOpcion2.text = sResp1b
        self.lbOpcion3.text = sResp1c
        self.lbOpcion4.text = sResp1d
        self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mPreguntas += [sPreg1,sPreg2,sPreg3,sPreg4,sPreg5,sPreg6,sPreg7,sPreg8,
                        sPreg9,sPreg10,sPreg11,sPreg12,sPreg13,sPreg14,sPreg15]
        mRespuestas += [sResp1a, sResp1b, sResp1c, sResp1d, sResp2a, sResp2b, sResp2c, sResp2d, sResp3a, sResp3b, sResp3c, sResp3d,
                        sResp4a, sResp4b, sResp4c, sResp4d, sResp5a, sResp5b, sResp5c, sResp5d, sResp6a, sResp6b, sResp6c, sResp6d,
                        sResp7a, sResp7b, sResp7c, sResp7d, sResp8a, sResp8b, sResp8c, sResp8d, sResp9a, sResp9b, sResp9c, sResp9d,
                        sResp10a, sResp10b, sResp10c, sResp10d, sResp11a, sResp11b, sResp11c, sResp11d, sResp12a, sResp12b, sResp12c, sResp12d,
                        sResp13a, sResp13b, sResp13c, sResp13d, sResp14a, sResp14b, sResp14c, sResp14d, sResp15a, sResp15b, sResp15c, sResp15d]
        self.lbPuntosTotales.text = String(UserDefaults.standard.integer(forKey: "PUNTOSTOTALES"))
        self.title = "Pregunta #" + String(UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA"))
        
        if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") >= 1 && UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") < 16{
            self.bButtonComenzar.isHidden=true
            self.bButtonComenzar.isEnabled=true
            self.lbPreguntas.text = mPreguntas[UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA")-1]
            self.lbOpcion1.isHidden = false
            self.lbOpcion2.isHidden = false
            self.lbOpcion3.isHidden = false
            self.lbOpcion4.isHidden = false
            self.bButtonOpcion1.isHidden = false
            self.bButtonOpcion2.isHidden = false
            self.bButtonOpcion3.isHidden = false
            self.bButtonOpcion4.isHidden = false
            self.lbOpcion1.text = mRespuestas[UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") * 4 - 4]
            self.lbOpcion2.text = mRespuestas[UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") * 4 - 3]
            self.lbOpcion3.text = mRespuestas[UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") * 4 - 2]
            self.lbOpcion4.text = mRespuestas[UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") * 4 - 1]
        }
        else if UserDefaults.standard.integer(forKey: "NUMERODEPREGUNTA") >= 16{
            self.lbPreguntas.text = "¡Gracias por contestar!"
            self.lbOpcion1.isHidden = true
            self.lbOpcion2.isHidden = true
            self.lbOpcion3.isHidden = true
            self.lbOpcion4.isHidden = true
            self.bButtonOpcion1.isHidden = true
            self.bButtonOpcion2.isHidden = true
            self.bButtonOpcion3.isHidden = true
            self.bButtonOpcion4.isHidden = true
            self.bButtonComenzar.isHidden = true
        }
        
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
