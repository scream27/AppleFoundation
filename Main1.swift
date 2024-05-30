import SwiftUI
let items = 1...50


//NavigationStack(path: <#T##Binding<NavigationPath>#>, root: T##() -> View)

//TabView(selection: /*@START_MENU_TOKEN@*/.constant(1)/*@END_MENU_TOKEN@*/,
//        content:  {
//    Text("Tab Content 1").tabItem { /*@START_MENU_TOKEN@*/Text("Tab Label 1")/*@END_MENU_TOKEN@*/ }.tag(1)
//    Text("Tab Content 2").tabItem { /*@START_MENU_TOKEN@*/Text("Tab Label 2")/*@END_MENU_TOKEN@*/ }.tag(2)
//})

// @Environment


struct Main1: View {
    @State private var tabSelection = 1
    @State var isModal1: Bool=false
    @State var isModal2: Bool=false
    @State var issModal: Bool = false
    @State var allMenus: [Menu] = [
        Menu(imageName: "1번메뉴", name:"토렴식 콩나물국밥", price:"7000원", description:"1.뚝배기를 가스불에 끓이지 않고 밥 콩나물 신선야채다짐(청양고추파마늘)을 담은 뚝배기에 솥단지 속 끓고 있는 육수를 국자로 떠 담아내는 방식 \n2. 펄펄 뜨겁지 않고 적당히 뜨거운 국물 온도 \n3. 계란은 국밥 속에 넣지 않고 수란으로 제공 \n4. 신선야채다짐으로부터 천연의 즙이 국물속에 녹아나와 청량하고 깔끔한 맛 \n5. 청양고추다짐이 들어가 맛있게 매운 맛"),
        Menu(imageName: "2번메뉴", name:"전통직화식 콩나물국밥", price:"7000원",description:"1. 뚝배기에 밥 콩나물 신선야채다짐(청양고추 제외) 육수를 담고 가스불에 펄펄 끓여 내는 일반적이고 전통적인 콩나물 국밥 \n2. 계란은 국밥 속에 투입 \n3. 청양고추다짐이 들어가지 않아 거의 맵지 않음"),
        Menu(imageName: "3번메뉴", name:"매운탕식 콩나물국밥", price:"7000원",description: "1. 뚝배기에 밥 콩나물 들깨가루 고춧가루 신선야채다짐(청양고추 제외) 육수를 담고 가스불에 펄펄 끓여내는 방식 \n2. 들깨가루 고춧가루 등의 매운탕식 다대기가 내는 구수하고 얼큰한 맛 \n3. 계란은 국밥 속에 넣어 제공 /n4. 청양고추다짐이 들어가지 않아 거의 맵지 않음"),
        Menu(imageName: "3번메뉴", name:"맑은탕식 콩나물국밥", price:"7000원", description:"1.뚝배기에 밥 콩나물 신선야채다짐(소량의 청양고추 포함) 육수를 담아 가스불에 펄펄 끓인 것 \n2. 계란을 국밥 속에 넣지 않고 수란으로 제공 \n3. 청양고추다짐이 소량 들어가 약간 매운 맛이긴 하지만 토렴응용식 보다는 덜 매운 맛"),
        Menu(imageName: "5번메뉴", name:"얼큰돼지국밥", price:"7000원",description:"내장이나 머릿고리를 일절 넣지 않은, 기름지고 얼큰하고 든든한 고기국밥"),
        Menu(imageName: "6번메뉴", name:"모주", price:"5000원",description:"1.막걸리에 여러 한방재료를 넣고 끓이면서 알콜 성분을 증발시킨 음료 \n2. 여름에는 차갑게 겨울에는 따뜻하게 드시면 더욱 좋습니다."),
        Menu(imageName: "7번메뉴", name:"순한두부찌개", price:"5000원",description:"순두부나 일반모두부가 아닌 청정원의 찌개용두부 사용."),
        Menu(imageName: "8번메뉴", name:"오징어사리", price:"5000원",description:"1.대왕오징어가 아닌 일반오징어 사용 \n2. 콩나물국밥과 수란에 넣어 드시는 용도.")
    ]
    
    @State var selectedMenu: [Menu] = [
    ]
    var body: some View {
        TabView(selection: $tabSelection,
                content:  {
            VStack{
                HStack{
                    Spacer()
                    Button(action: {
                        self.issModal=true
                    }, label: {
                        Label("장바구니\(selectedMenu.count)", systemImage: "cart.circle")
                    })
                    .padding(.top, 1)
                    .font(.headline)
                    .buttonStyle(.bordered)
                    .buttonBorderShape(.capsule)
                    .sheet(isPresented: $issModal, content:{
                        MyCart(tabSelection: $tabSelection,selectedMenuList: selectedMenu)
                        
                    })
                }
                ScrollView(.horizontal){
                    //                    LazyHGrid(rows: CardView(selectedMenu: $selectedMenu, menu: allMenus[], alignment: .center) {
                    //                        ForEach(items, id: \.self) {item in }}.frame(height:150)
                    //                    }
                    Grid(horizontalSpacing: 100, verticalSpacing:45) {
                        GridRow {
                            CardView(selectedMenu: $selectedMenu, menu: allMenus[0])
                            CardView(selectedMenu: $selectedMenu, menu: allMenus[1])
                            CardView(selectedMenu: $selectedMenu, menu: allMenus[2])
                            CardView(selectedMenu: $selectedMenu, menu: allMenus[3])
                        }
                        GridRow {
                            CardView(selectedMenu: $selectedMenu, menu: allMenus[4])
                            CardView(selectedMenu: $selectedMenu, menu: allMenus[5])
                            CardView(selectedMenu: $selectedMenu, menu: allMenus[6])
                            CardView(selectedMenu: $selectedMenu, menu: allMenus[7])
                        }
                    }
                    .padding(.leading, 30)
                    .padding(.top, 20)
                }
            }   /*}*/.tabItem { Text("주문화면") }.tag(1)
            
            List {
                Button("콩나물국밥의 효능"){self.isModal1=true}
                    .sheet(isPresented: $isModal1, content: {
                        Origin()
                    })
                
                Button("수란 먹는 법"){self.isModal2=true}
                    .sheet(isPresented: $isModal2, content: {
                        Origin2()
                    })
            }.tabItem { Text("음식이야기") }.tag(2)
        })
        
        
        
        
    }
}





#Preview {
    Main1()
}
//1.펄펄 끓는 콩나물국밥의 국물을 수란 그릇에 두세 숟가락 붓는다. \n2. 같이 나오는 김을 취향에 따라 두세 장 찢어서 넣는다. \n3.숟가락으로 휘휘 젓는다. 그동안 국물의 열 때문에 수란이 조금 익는다. \n4. 다 저었으면 후루루루룩하고 빨아먹는다.
