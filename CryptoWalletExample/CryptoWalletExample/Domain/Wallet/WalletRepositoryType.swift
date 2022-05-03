//
//  WalletRepositoryType.swift
//  CryptoWalletExample
//
//  Created by Manel Roca on 3/5/22.
//

import Foundation

protocol WalletRepositoryType {
    func generateNewWallet()
    func getWalletMnemonic() -> String?
    func isWalletCreated() -> Bool
}
