//
//  FastRequest.swift
//  FastInternet
//
//  Created by Pedro Omar  on 12/19/25.
//

import Foundation
import SwiftUI
import Combine
import FastSdk

@MainActor
final class FastRequest: ObservableObject {
    @Published var fastResponse: Speed = Speed(client: Client(ip: "", asn: "", location: Location(city: "", country: "")), target: [Target(name: "", url: "", location: Location(city: "", country: ""))])
    
    @Published var isLoading: Bool = false
    @Published var message: String = ""
    @Published var timeOut: Bool = false
    
    let fastApi = FastApi.shared
    let defaults = UserDefaults.standard
    
    
    func speedTestRequest() {
        Task {
            DispatchQueue.main.async { [self] in isLoading = false }
            await speedTestRequestPrivate()
        }
    }
    
    func speedTestRequestPrivate() async {
        await fastApi.speedTest { result in
            DispatchQueue.main.async { [self] in
                switch result {
                case let .success(model):
                    fastResponse = model
                    isLoading = false
                    timeOut = true
                case let .failure(error):
                    message = error.localizedDescription
                    isLoading = false
                    timeOut = false
                    print("ErrorGetSpeedTestResponse: \(error.localizedDescription)")
                }
            }
        }
    }
}
