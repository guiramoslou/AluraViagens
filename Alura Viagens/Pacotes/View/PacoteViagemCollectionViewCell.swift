//
//  PacoteViagemCollectionViewCell.swift
//  Alura Viagens
//
//  Created by Guilherme Ramos Lourenco on 18/03/21.
//

import UIKit

class PacoteViagemCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imagemViagem: UIImageView!
    @IBOutlet weak var labelTitulo: UILabel!
    @IBOutlet weak var labelQuantidadeDeDias: UILabel!
    @IBOutlet weak var labelPreco: UILabel!
    
    func configuraCelulaPacote(pacote:PacoteViagem) {
        labelTitulo.text = pacote.viagem.titulo
        labelQuantidadeDeDias.text = "\(pacote.viagem.quantidadeDeDias) dias"
        labelPreco.text = pacote.viagem.preco
        imagemViagem.image = UIImage(named: pacote.viagem.caminhoDaImagem)
        layer.borderWidth = 0.5
        layer.borderColor = CGColor(red: 85.0/255.0, green: 85.0/255.0, blue: 85.0/255.0, alpha: 1)
        layer.cornerRadius = 8
    }
}
