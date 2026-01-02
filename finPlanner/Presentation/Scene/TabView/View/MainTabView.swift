import SwiftUI

struct MainTabView: View {
    @State var selectionPage:TabPage = .paymantList
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selectionPage){
                ContentView()
                    .tag(TabPage.main)
                PaymаntView()
                    .tag(TabPage.paymantList)
            }
            HStack(spacing: 10){

                TabItem(image: "house", text: "главная", pageType: .main, selected: $selectionPage)
                
                TabItem(image: "list.bullet.rectangle.portrait", text: "платежи",pageType: .paymantList, selected: $selectionPage)

            }
            .padding(.top, 15)
            .frame(maxWidth: .infinity)
            .background(.appBlack)

        }
    }
}

#Preview {
    MainTabView()
}


