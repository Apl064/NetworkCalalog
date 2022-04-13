//
//  MainCollectionView.swift
//  NetworkCalalog
//
//  Created by Pavel Metelin on 09.04.2022.
//

import UIKit

class MainCollectionView: UICollectionViewController {

    let nameAPIs = NameAPI.allCases
    
    //MARK: - UICollectionViewDataSource
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        nameAPIs.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell",
                                                          for: indexPath) as? MainCollectionViewCell
        else {
            return UICollectionViewCell()
        }
        
        cell.apiRequestLabel.text = nameAPIs[indexPath.item].rawValue
        
        return cell
    }
    
    //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let makeupTVC = segue.destination as! TableView
        switch segue.identifier {
        case "mainToTable": makeupTVC.trablAPIButtonPressed()
        default: break
        }
    }
    
    //MARK: - UICollectionViewDelegate
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let nameAPI = nameAPIs[indexPath.item]
        switch nameAPI {
//        case .api1: performSegue(withIdentifier: "mainToPredict", sender: nil)
        case .api2: performSegue(withIdentifier: "mainToTable", sender: nil)
//        case .api3: performSegue(withIdentifier: "mainToPredict", sender: nil)
        }
    }
}

//MARK: - UICollectionViewDelegateFlowLayout
extension MainCollectionView: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: UIScreen.main.bounds.width - 48, height: 100)
    }
}

