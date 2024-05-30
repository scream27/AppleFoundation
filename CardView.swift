
import SwiftUI


struct CardView: View {
    
    @Binding var selectedMenu: [Menu]
    @State var isModal: Bool=false
    var menu: Menu
    var body: some View {
        @State var showingDetail = false
            VStack{
                Image(menu.imageName)
                    .resizable()
                    .frame(width:200, height:200)
                    .clipShape(RoundedRectangle(cornerRadius: 26))
                    .overlay(
                        RoundedRectangle(cornerRadius: 26)
                            .stroke(.blue, lineWidth: 6)
                    )
                HStack(spacing:65) {
                    Text(menu.name)
                    Text(menu.price)
                }
                HStack(spacing: 30){
                    Button("?"){
                        self.isModal = true
                    }.sheet(isPresented: $isModal, content: {
                        CircleImage(menu: menu)
                    })
                    .buttonStyle(.bordered)
                    .buttonBorderShape(.capsule)
                    Button(action: {
                        print(menu)
                        selectedMenu.append(menu)
                        print(selectedMenu)
                    }) {
                        Text("주문하기")
                    }
                    .buttonStyle(.bordered)
                }
            }
//            .background(
//                Color.gray
//            
//                    .frame(width:280, height:286)
//                    .cornerRadius(20)
//                    .brightness(0.3))
        }
}
#Preview {
    CardView(selectedMenu: .constant([]), menu: Menu(imageName: "1번메뉴", name: "토렴식", price: "7000원", description: ""))
}
