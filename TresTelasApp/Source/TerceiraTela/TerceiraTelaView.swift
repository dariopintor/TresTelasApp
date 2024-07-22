//
//  TerceiraTelaView.swift
//  TresTelasApp
//
//  Created by Dario Pintor on 20/07/24.
//

import Foundation
import UIKit

class TerceiraTelaView: UIView {
    
    let botaoPrimeiraTela: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Voltar para Primeira Tela", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .blue
        button.layer.cornerRadius = 14
        return button
    }()
    
    let botaoVoltar: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Voltar uma Tela", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .blue
        button.layer.cornerRadius = 14
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .purple
        self.addSubview(botaoPrimeiraTela)
        self.addSubview(botaoVoltar)
        botaoPrimeiraTela.translatesAutoresizingMaskIntoConstraints = false
        botaoVoltar.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            botaoPrimeiraTela.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            botaoPrimeiraTela.topAnchor.constraint(equalTo: self.centerYAnchor, constant: -30),
            botaoPrimeiraTela.widthAnchor.constraint(equalToConstant: 200),
            botaoPrimeiraTela.heightAnchor.constraint(equalToConstant: 50),
            
            botaoVoltar.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            botaoVoltar.topAnchor.constraint(equalTo: self.centerYAnchor, constant: 30),
            botaoVoltar.widthAnchor.constraint(equalToConstant: 200),
            botaoVoltar.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
