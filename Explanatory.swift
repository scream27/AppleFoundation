import SwiftUI


struct CircleImage: View {
//    var image: Image

    var menu: Menu
    
    var body: some View {
//        image
//            .clipShape(Circle())
//            .overlay {
//                Circle().stroke(.white, lineWidth: 3)
//            }
//            .shadow(radius: 7)
        Text(menu.description)
            .padding()
    }
}

//#Preview {
//    CircleImage(menu)
//}
