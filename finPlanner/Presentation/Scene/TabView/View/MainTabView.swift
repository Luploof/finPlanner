import SwiftUI

struct MainTabView: View {
    @Binding var path: NavigationPath
    @State var selectionPage:TabPage = .paymantList
    init(path: Binding<NavigationPath>) {
        UITabBar.appearance().isHidden = true
        self._path = path
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selectionPage){
                ContentView(path: $path)
                    .tag(TabPage.main)
                PaymаntView(path: $path)
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



