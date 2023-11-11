//
//  ContentView.swift
//  Productivity
//
//  Created by Javier Fernandes on 10/11/2023.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        NavigationSplitView {
            List {
                if let envName = AppConfig.shared.stringValue(forKey: "EnvironmentName") {
                    Text(envName)
                        .padding()
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
                ToolbarItem {
                }
            }
        } detail: {
            Text("Select an item")
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
