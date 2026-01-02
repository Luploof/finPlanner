import SwiftUI

struct MainTabView: View {
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView{
                ContentView()
            }
            HStack{
                //
            }
        }
    }
}

#Preview {
    MainTabView()
}
