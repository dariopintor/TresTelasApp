//
//  SegundaTelaViewController.swift
//  TresTelasApp
//
//  Created by Dario Pintor on 20/07/24.
//

import Foundation
import UIKit

class SegundaTelaViewController: UIViewController {

    override func loadView() {
        self.view = SegundaTelaView()
    }

    var segundaTelaView: SegundaTelaView {
        return self.view as! SegundaTelaView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        segundaTelaView.botaoNavegacao.addTarget(self, action: #selector(navegarParaTerceiraTela), for: .touchUpInside)
    }

    @objc func navegarParaTerceiraTela() {
        let terceiraTelaVC = TerceiraTelaViewController()
        self.navigationController?.pushViewController(terceiraTelaVC, animated: true)
    }
}
