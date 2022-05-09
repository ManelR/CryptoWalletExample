//
//  WalletCreateViewController.swift
//  CryptoWalletExample
//
//  Created by Manel Roca on 3/5/22.
//

import Foundation
import UIKit

class WalletCreateViewController: UIViewController {
    @IBOutlet weak var lblPhrase: UILabel!
    @IBOutlet weak var imgTouch: UIImageView!
    @IBOutlet weak var viewBlur: UIVisualEffectView!
    
    private let walletRepository: WalletRepositoryType = WalletRepository()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
    }
    
    private func configView() {
        // Step 1: Crete wallet
        self.walletRepository.generateNewWallet()
        // Step 2: Show phase
        self.lblPhrase.text = self.walletRepository.getWalletMnemonic()
    }
    
    // MARK: - ACTIONS
    @IBAction func onClickBlur(_ sender: Any) {
        self.viewBlur.isHidden = true
        self.imgTouch.isHidden = true
    }
    
}
