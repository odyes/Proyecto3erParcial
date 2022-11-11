//
//  ContactosController.swift
//  P3P
//
//  Created by Alumno ULSA on 11/11/22.
//  Copyright © 2022 ulsa. All rights reserved.
//

import UIKit

class ContactosController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    var contactos :  [Contactos] = []
    
    @IBOutlet weak var tvContactos: UITableView!
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 99
        }
        
    func numberOfSections(in tableView: UITableView) -> Int {
            return 1
        }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaContactos") as? CeldaContactosController
        celda?.lblParentesco.text = contactos[indexPath.row].parentesco
        celda?.lblNumero.text = contactos[indexPath.row].numero
        celda?.lblNombre.text = contactos[indexPath.row].nombre
        
        return celda!
    }
    
    override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
        contactos.append(Contactos(nombre: "Azalia Peña", numero: "6471179082", parentesco: "Pareja"))
        contactos.append(Contactos(nombre: "César Amaya", numero: "6471179082", parentesco: "Amigo"))
        }

        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
    
    
    
}
