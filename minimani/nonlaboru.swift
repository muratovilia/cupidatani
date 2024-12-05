import SwiftUI

struct ContentView: View {
    var startDate: Date = Date() // Starting date for the timeline
    
    var body: some View {
        // Creating a TimelineView with a periodic update every 3 seconds
        TimelineView(.periodic(from: startDate, by: 3.0)) { context in
            // You can access 'context.date' to get the current date and time for this update
            VStack {
                Text("Current Time:")
                    .font(.headline)
                Text("\(context.date, style: .time)")
                    .font(.largeTitle)
                    .padding()
            }
            .onAppear {
                print("View appeared at \(context.date)")
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
