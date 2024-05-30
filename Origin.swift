

import SwiftUI

struct Origin: View {
    var body: some View {
        Text("콩나물에는 간 보호 기능이 존재하는 아스파라긴산과 숙취 해소에 도움이 되는 아르기닌이 들어 있기 때문에 음주 후 에 먹으면 좋은 음식이라고 알려져 있다.")
            .padding()
    }
}



struct Origin2: View {
    var body: some View {
        VStack{
            Image("수란")
            Text("1. 수란을 국밥에 넣지 마세요. \n2.김 두세 조각을 찢지 말고 통째로 수란에 넣습니다. \n3. 수란에서 김의 역할은 짭쪼름함으로써 수란의 간을 맞추며 김 본연의 맛을 수란에 퍼트립니다. \n4. 위 2.에 콩나물국밥의 국물을 서너 숟가락 넣고 숟가락으로 젓습니다. \n5. 위 4.를 마시거나 떠 드십니다. \n6. 위 4.에 오징어 사리나 콩나물을 넣어 드시면 더욱 맛있습니다.")
        }}
}
#Preview {
    Origin()
}
