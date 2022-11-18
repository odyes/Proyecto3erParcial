//
//  CalendarioController.swift
//  P3P
//
//  Created by Alumno ULSA on 18/11/22.
//  Copyright © 2022 ulsa. All rights reserved.
//

import UIKit

class CalendarioController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var calendario : [Calendario] = []
    @IBOutlet weak var tvCalendario: UITableView!
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 83
        }
        
        func numberOfSections(in tableView: UITableView) -> Int {
            return 1
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return calendario.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let celda = tableView.dequeueReusableCell(withIdentifier: "celdaCalendario") as? CeldaCalendarioController
            celda?.lblFecha.text = calendario[indexPath.row].fecha
            celda?.lblCantidad.text = calendario[indexPath.row].cantidad
            celda?.lblEstado.text = calendario[indexPath.row].estado
            return celda!
        }
    
    override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
        calendario.append(Calendario(estado: "Pago confirmado", fecha: "01/Oct/2021", cantidad: "$2,900.00"))
        calendario.append(Calendario(estado: "Pago confirmado", fecha: "01/Oct/2021", cantidad: "$2,900.00"))
        calendario.append(Calendario(estado: "Pago confirmado", fecha: "01/Oct/2021", cantidad: "$2,900.00"))
        calendario.append(Calendario(estado: "Pago confirmado", fecha: "01/Oct/2021", cantidad: "$2,900.00"))
        }
    
    
    
}
