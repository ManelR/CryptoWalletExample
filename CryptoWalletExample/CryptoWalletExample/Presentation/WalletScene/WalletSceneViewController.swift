//
//  WalletSceneViewController.swift
//  CryptoWalletExample
//
//  Created by Manel Roca on 3/5/22.
//

import Foundation
import UIKit

class WalletSceneViewController: UIViewController {
 
    // MARK: - ACTIONS
    @IBAction func onClickCreateWallet(_ sender: Any) {
        performSegue(withIdentifier: "WALLET_CREATE", sender: self)
    }
    
    @IBAction func onClickImportWallet(_ sender: Any) {
    }
    
}
