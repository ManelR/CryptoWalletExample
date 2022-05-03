//
//  WalletRepository.swift
//  CryptoWalletExample
//
//  Created by Manel Roca on 3/5/22.
//

import Foundation
import WalletCore

class WalletRepository: WalletRepositoryType {
    private let MNEMONIC_KEY = "mnemonic_key"
    
    private var wallet: HDWallet?
    
    init() {
        
    }
    
    func generateNewWallet() {
        self.wallet = HDWallet(strength: 128, passphrase: "")
        self.saveMnemonicIntoStorage()
    }
    
    func getWalletMnemonic() -> String? {
        return self.wallet?.mnemonic
    }
    
    func isWalletCreated() -> Bool {
        return wallet != nil
    }
    
    private func loadSavedWallet() -> Bool {
        let defaults = UserDefaults.standard
        if let mnemonic = defaults.string(forKey: MNEMONIC_KEY) {
            self.wallet = HDWallet(mnemonic: mnemonic, passphrase: "")
            return isWalletCreated()
        }
        
        return false
    }
    
    private func saveMnemonicIntoStorage() {
        guard let wallet = wallet else {
            return
        }

        let mnemonic = wallet.mnemonic
        let defaults = UserDefaults.standard
        defaults.set(mnemonic, forKey: MNEMONIC_KEY)
    }
}
