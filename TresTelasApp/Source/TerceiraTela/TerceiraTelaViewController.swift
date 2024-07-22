//
//  TerceiraTelaViewController.swift
//  TresTelasApp
//
//  Created by Dario Pintor on 20/07/24.
//

import Foundation
import UIKit

class TerceiraTelaViewController: UIViewController {

    override func loadView() {
        self.view = TerceiraTelaView()
    }

    var terceiraTelaView: TerceiraTelaView {
        return self.view as! TerceiraTelaView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        terceiraTelaView.botaoPrimeiraTela.addTarget(self, action: #selector(voltarParaPrimeiraTela), for: .touchUpInside)
        terceiraTelaView.botaoVoltar.addTarget(self, action: #selector(voltarUmaTela), for: .touchUpInside)
    }

    @objc func voltarParaPrimeiraTela() {
        self.navigationController?.popToRootViewController(animated: true)
    }

    @objc func voltarUmaTela() {
        self.navigationController?.popViewController(animated: true)
    }
}
