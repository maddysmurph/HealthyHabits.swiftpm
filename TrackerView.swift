import SwiftUI

struct trackerView: View {
    @State var Meals: [Meal] = []
    @State var newFoodItem: String = ""
    @State var newcalorieAmount: Int = 0
    
    var body: some View {
        VStack {
            Text("Track Your Daily Meals!")
                .font(.system(size: 50))
                .foregroundColor(.black)
                .bold()
            
            HStack {
                TextField("Enter Food Eaten Here", text: $newFoodItem)
                    .textFieldStyle(.roundedBorder)
                
                TextField("Enter Calorie Value Here", value: $newcalorieAmount, format: .number)
                    .textFieldStyle(.roundedBorder)
                
                Button("+") {
                    let newItem = Meal(foodType: newFoodItem, calories: newcalorieAmount)
                    Meals.append(newItem)
                    
                    newFoodItem = ""
                    newcalorieAmount = 0
                }
                .frame(width: 30, height: 30)
                .background(Color.yellow) // You can use predefined color directly
                .foregroundColor(.white)
                .cornerRadius(5) // Added corner radius for better appearance
                .padding() // Added padding for better spacing
            }
            
            List {
                ForEach(Meals, id: \.self) { currentMeal in
                    Text("\(currentMeal.foodType): \(currentMeal.calories) calories")
                }
            }
        }
        .padding() // Added padding for better spacing
    }
}

struct Meal: Hashable {
    var foodType: String
    var calories: Int
}

