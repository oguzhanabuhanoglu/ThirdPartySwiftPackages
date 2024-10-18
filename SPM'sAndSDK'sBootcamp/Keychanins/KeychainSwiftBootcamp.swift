//
//  KeychainSwiftBootcamp.swift
//  SPM'sAndSDK'sBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 18.10.2024.
//

// Keychain is similar to UserDefauls on AppStorage
// Keychain is encrypted
// Keycain is good for password, ssn, id, credit card info
// Keychain persist between installs and across devices

import SwiftUI
import KeychainSwift

final class KeychainManager {
    
    let keychain: KeychainSwift
    
    init() {
        let keychain = KeychainSwift()
        keychain.synchronizable = true
        self.keychain = keychain
    }
    
    func set(_value: String, key: String){
        keychain.set(_value, forKey: key)
    }
    
    func get(key: String) -> String? {
        keychain.get(key)
    }
}

struct KeychainManagerKey: EnvironmentKey {
    // Define the default value for the environment key
    // You can also choose the initiliaze it with a specific configuration if needed.
    static let defaultValue: KeychainManager = KeychainManager()
}

extension EnvironmentValues {
    var keychain: KeychainManager {
        get { self[KeychainManagerKey.self] }
        set { self[KeychainManagerKey.self] = newValue }
    }
    
}

struct KeychainSwiftBootcamp: View {
    
    @State var password: String = ""
//    let keychainManager = KeychainManager()
    @Environment(\.keychain) var keychain
    
    var body: some View {
        Button(password.isEmpty ? "no password" : password) {
            let newPassword = "asdasd"
//            keychainManager.keychain.set(newPassword, forKey: "user_password") // , withAccess: .accessibleAfterFirstUnlock
            keychain.set(_value: newPassword, key: "user_password")
            password = newPassword
        }
        .onAppear {
//            password = keychainManager.keychain.get("user_password") ?? ""
            password = keychain.get(key: "user_password") ?? ""
        }
    }
}

#Preview {
    KeychainSwiftBootcamp()
}
