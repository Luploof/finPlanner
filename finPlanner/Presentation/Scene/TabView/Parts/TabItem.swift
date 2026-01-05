import SwiftUI
struct TabItem: View {
    var image: String
    var text: String
    var pageType: TabPage
    @Binding var selected: TabPage
    var body: some View {
        Button{
            selected = pageType
        } label: {
            VStack{
                Image(systemName: image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 16, height: 20)
                Text(text)
                    .roboto(font: .light, size: 12)
            }
            .foregroundStyle(pageType == selected ? .appBlack : .white)
            .padding(.horizontal, 30)
            .padding(.vertical, 10)
            .background(pageType == selected ? .appYellow : .appBlack)
            .clipShape(Capsule())
        }

        
    }
}
