//
//  ContentView.swift
//  fukusuView2
//
//  Created by MsMacM on 2023/03/19.
//

import SwiftUI

class ViewModel: ObservableObject {
    @Published var name = ""
}

struct ContentView: View {
    @ObservedObject var vm = ViewModel()
    
    var body: some View {
        VStack {
            SecondView(vm: vm)
            Text("\(vm.name) second")
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}
struct SecondView: View {
    @ObservedObject var vm: ViewModel
    
    var body: some View {
        TextField("Placeholder", text: $vm.name)
        ThirdView(vm: vm)
    }
}
struct ThirdView: View {
    @ObservedObject var vm: ViewModel
    var body: some View {
        VStack {
            Text(vm.name)
            Text("3rd")
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
