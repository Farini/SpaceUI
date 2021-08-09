import SwiftUI

public struct SpaceUI {
    
    
    /// Textfield consistent with design
    /// - Parameters:
    ///     - placeholder: The text you see before writing anything
    ///     - text: Binding for the text that gets typed into the field.
    public struct MainTextField:View {
        
        @State var placeholder: String
        @Binding var text:String
        
        public init(placeholder:String, text:Binding<String>) {
            self._placeholder = State(initialValue: placeholder)
            self._text = text
        }
        
        public var body: some View {
            HStack {
                Image(systemName: "person").foregroundColor(.blue)
                TextField(placeholder, text: $text)
                    .font(.system(size:20, weight: .bold, design: .default))
                    .foregroundColor(.blue)
            }
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 2))
            
        }
    }
    
    /// Horizontal Ruled, same as Divider(), but better
    public struct HorizontalRuler:View {
        public var body: some View {
            Divider()
                .padding(.horizontal)
        }
    }
}

struct SpaceUIPreview: PreviewProvider {
    static var previews: some View {
        VStack {
            SpaceUI.MainTextField(placeholder: "placeholder", text: .constant("Test text"))
            SpaceUI.HorizontalRuler()
            SpaceUI.MainTextField(placeholder: "placeholder", text: .constant(""))
            HRuler(height: 6)
            SpaceUI.MainTextField(placeholder: "placeholder", text: .constant("Other text"))
        }
    }
}
