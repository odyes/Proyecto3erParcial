//
//  MenuController.swift
//  P3P
//
//  Created by Alumno ULSA on 08/11/22.
//  Copyright © 2022 ulsa. All rights reserved.
//

import UIKit

class MenuController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    var menu : [Menu] = []
    
    @IBOutlet weak var tvMenu: UITableView!
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 164
        }
        
        func numberOfSections(in tableView: UITableView) -> Int {
            return 1
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return menu.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let celda = tableView.dequeueReusableCell(withIdentifier: "celdaMenu") as? CeldaMenuController
            celda?.lblNombre.text = menu[indexPath.row].nombre
            celda?.lblTipo1.text = menu[indexPath.row].tipo1
            celda?.lblTipo2.text = menu[indexPath.row].tipo2
            celda?.lblPrecio1.text = menu[indexPath.row].precio1
            celda?.lblPrecio2.text = menu[indexPath.row].precio2
            
            celda?.imgFoto.image = UIImage(named: menu[indexPath.row].foto)
            celda?.imgFoto.layer.cornerRadius = 10
            celda?.imgFoto.clipsToBounds = true
            return celda!
        }
    
    override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
        menu.append(Menu(nombre: "Molletes", precio1: "Sencillo", precio2: "Con carne", tipo1: "$28.00", tipo2: "$35.00", foto: "molletes"))
        menu.append(Menu(nombre: "Quesadillas", precio1: "Sincronizadas", precio2: "Con carne", tipo1: "$28.00", tipo2: "$35.00", foto: "quesadillas"))
        menu.append(Menu(nombre: "Sandwich", precio1: "Sencillo", precio2: "De pollo", tipo1: "$28.00", tipo2: "$35.00", foto: "sandwich"))
        menu.append(Menu(nombre: "Fajitas", precio1: "De res", precio2: "De pollo", tipo1: "$28.00", tipo2: "$35.00", foto: "fajitas"))
        menu.append(Menu(nombre: "Nachos", precio1: "Sencillos", precio2: "Con carne", tipo1: "$28.00", tipo2: "$35.00", foto: "nachos"))
            
        }

        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
}
