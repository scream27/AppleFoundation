import SwiftUI
import Foundation


struct MyCart: View {
    @Binding var tabSelection: Int
    var selectedMenuList: [Menu]
    var body: some View {
        NavigationStack {
            VStack {
                Button(action: {tabSelection = 1}, label: {
                    Text("주문하기")
                })
                .buttonStyle(.bordered)
                .padding()
                ForEach(selectedMenuList) { menu in
                    Text(menu.name)}
                ForEach(selectedMenuList) { menu in Text(menu.price.dropLast())}
                
                Button(action: {tabSelection = 2}, label: {
                    Text("음식이야기로")
                })
                .buttonStyle(.bordered)
            }
          
            
        }
    }
}


//#Preview {
//    MyCart(selectedMenuList: [
//        Menu(imageName: "7번메뉴", name:"순한두부찌개", price:"5000원",description:"순두부나 일반모두부가 아닌 청정원의 찌개용두부 사용.")
//    ])
//}
//


