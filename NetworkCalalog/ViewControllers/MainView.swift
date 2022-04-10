//
//  MainView.swift
//  NetworkCalalog
//
//  Created by Pavel Metelin on 09.04.2022.
//

import UIKit

class MainView: UICollectionViewController {

    let nameAPIs = NameAPI.allCases
    
    //MARK: - UICollectionViewDataSource
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        nameAPIs.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell",
                                                          for: indexPath) as? MainViewCell
        else {
            return UICollectionViewCell()
        }
        
        cell.apiRequestLabel.text = nameAPIs[indexPath.item].rawValue
        
        return cell
    }
    
    //MARK: - UICollectionViewDelegate
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let nameAPI = nameAPIs[indexPath.item]
        switch nameAPI {
        case .api_1: performSegue(withIdentifier: "mainToTable", sender: nil)
        }
    }
}

//MARK: - UICollectionViewDelegateFlowLayout
extension MainView: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: UIScreen.main.bounds.width - 48, height: 100)
    }
}

