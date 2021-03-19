//
//  PacotesViagensViewController.swift
//  Alura Viagens
//
//  Created by Guilherme Ramos Lourenco on 18/03/21.
//

import UIKit

class PacotesViagensViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var colecaoPacotesViagem: UICollectionView!
    
    let listaDeViagens: Array<Viagem> = ViagemDAO().retornaTodasAsViagens()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colecaoPacotesViagem.dataSource = self
        colecaoPacotesViagem.delegate = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.listaDeViagens.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let celulaPacote = collectionView.dequeueReusableCell(withReuseIdentifier: "celulaPacote", for: indexPath) as! PacoteViagemCollectionViewCell
        
        let viagemAtual = listaDeViagens[indexPath.item]

        celulaPacote.labelTitulo.text = viagemAtual.titulo
        celulaPacote.labelQuantidadeDeDias.text = "\(viagemAtual.quantidadeDeDias) dias"
        celulaPacote.labelPreco.text = viagemAtual.preco
        celulaPacote.imagemViagem.image = UIImage(named: viagemAtual.caminhoDaImagem)
        
        celulaPacote.layer.borderWidth = 0.5
        celulaPacote.layer.borderColor = CGColor(red: 85.0/255.0, green: 85.0/255.0, blue: 85.0/255.0, alpha: 1)
        celulaPacote.layer.cornerRadius = 8
        
        return celulaPacote
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let larguraCelula = collectionView.bounds.width / 2
        
        return CGSize(width: larguraCelula - 15, height: 160)
    }
}
