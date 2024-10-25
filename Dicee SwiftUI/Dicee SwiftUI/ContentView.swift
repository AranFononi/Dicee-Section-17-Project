
import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNumber: Int = 1
    @State var rightDiceNumber: Int = 1
    
    var body: some View {
        ZStack {
            Image("background").resizable().ignoresSafeArea()
            
            VStack(alignment: .center) {
                Image("diceeLogo").resizable().aspectRatio(contentMode: .fit).frame(height: 150).padding(Edge.Set.top, 50)
                
                
                Spacer()
                
                HStack {
                    Dices(n: leftDiceNumber)
                    Dices(n: rightDiceNumber)
                    
                    
                }
                
                Spacer()
                
                Button(action: {
                    leftDiceNumber = Int.random(in: 1...6)
                    rightDiceNumber = Int.random(in: 1...6)
                }) {
                    Text("Roll Dice")
                        .font(.system(size: 35, weight: .medium))
                        .foregroundStyle(.white)
                        .frame(width: 250, height: 70)
                        .background(Color.red, in: RoundedRectangle(cornerRadius: 18))
                }.padding(Edge.Set.bottom, 50)
            }
        }
    }
}





#Preview {
    ContentView()
}

struct Dices: View {
    
//    let dice = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    let n: Int
    
    var body: some View {
        Image("dice\(n)").resizable().aspectRatio(1, contentMode: .fit).frame(height: 120)
            .padding()
    }
}
