import SwiftUI

struct ContentView: View {
    @State var isActive: Bool=false
    var body: some View {
        ZStack{
            if self.isActive {
                Main1()
            }
            else {
                VStack{
                    Image(systemName: "fork.knife.circle.fill")
                        .imageScale(.large)
                    Image("Fooding")
                        .resizable()
                        .scaledToFit()
                    .frame(width: 300, height: 200)}}
        }
        .ignoresSafeArea()
        .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                        withAnimation {
                            self.isActive = true
                        }
                    }
                }
    }
}
