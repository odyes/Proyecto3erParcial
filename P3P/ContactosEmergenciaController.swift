//
//  ContactosEmergenciaController.swift
//  P3P
//
//  Created by Alumno ULSA on 15/11/22.
//  Copyright © 2022 ulsa. All rights reserved.
//

import UIKit

class ContactosEmergenciaController : UIViewController {
    
    var contactos : Contactos?
    var callbackActualizar : (( ) -> Void)?
    
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtNumero: UITextField!
    @IBOutlet weak var txtParentesco: UITextField!
    
    override func viewDidLoad() {
            super.viewDidLoad()
            if contactos != nil{
                txtNombre.text = contactos!.nombre
                txtNumero.text = contactos!.numero
                txtParentesco.text = contactos!.parentesco
            }
        }
    
    @IBAction func doTapActualizar(_ sender: Any) {
        if callbackActualizar != nil{
            contactos?.nombre = txtNombre.text!
            contactos?.numero = txtNumero.text!
            contactos?.parentesco = txtParentesco.text!
            callbackActualizar!()
            self.navigationController?.popViewController(animated: true)
            }
    }
    
}
