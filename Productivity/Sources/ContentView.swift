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
                Text("Item 1")
                Text("Item 2")
                Text("Item 3")
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
