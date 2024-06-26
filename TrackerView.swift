import SwiftUI

struct TrackerView: View {
    @State var meals: [Meal] = []
    @State var newFoodItem: String = ""
    @State var newCalorieAmount: Int = 0
    @State var currentDate: Date = Date()
    
    let mealsKey = "meals"
    
    var body: some View {
        VStack {
            VStack(alignment: .leading){
                Text("Track Your Daily Meals!")
                    .font(.system(size: 50))
                    .foregroundColor(.black)
                    .bold()
                Text("Total Calories: \(totalCaloriesForToday())")
            }
            VStack {
                HStack{
                    Text("Enter Food Name:")
                    TextField("", text: $newFoodItem)
                        .textFieldStyle(.roundedBorder)
                }
                HStack{
                    Text("Enter Calorie Value:")
                    TextField("", value: $newCalorieAmount, formatter: NumberFormatter())
                        .textFieldStyle(.roundedBorder)
                }
                Button("+") {
                    let newItem = Meal(foodType: newFoodItem, calories: newCalorieAmount, date: currentDate)
                    meals.append(newItem)
                    saveMeals()
                    
                    newFoodItem = ""
                    newCalorieAmount = 0
                }
                .font(.system(size: 30))
                .frame(width: 100, height: 50)
                .background(Color.yellow)
                .foregroundColor(.white)
                .cornerRadius(5)
                .padding()
                
                
                List {
                    ForEach(meals.indices, id: \.self) { index in
                        let meal = meals[index]
                        HStack {
                            Text("\(meal.foodType): \(meal.calories) calories")
                            Spacer()
                            Button(action: {
                                
                                meals.remove(at: index)
                                saveMeals()
                            }) {
                                Image(systemName: "trash")
                                    .foregroundColor(.red)
                            }
                        }
                    }
                }
            }
        }
        .padding()
        .onAppear {
            loadMeals()
            updateCurrentDate()
        }
        .onDisappear {
            saveMeals()
        }
        Spacer()
        HStack(spacing: 20){
            NavigationLink{
                favoritesView()
            } label: {
                Image(systemName: "heart")
                    .resizable()
                    .frame(width: 60, height: 50)
                    .foregroundColor(.white)
            }
            NavigationLink{
                TrackerView()
            } label: {
                Image(systemName: "pin")
                    .resizable()
                    .frame(width: 40, height: 60)
                    .foregroundColor(.white)
            }
            
            NavigationLink{
                HomeView()
            } label: {
                Image(systemName: "house.circle")
                    .resizable()
                    .frame(width: 70, height: 65)
                    .foregroundColor(.white)
            }
            
            NavigationLink{
                AboutView()
            }label: {
                Image(systemName: "person")
                    .resizable()
                    .frame(width: 55, height: 60)
                    .foregroundColor(.white)
            }
            NavigationLink{
                ExerciseTrackerView()
            } label: {
                Image(systemName: "figure.run")
                    .resizable()
                    .frame(width: 45, height: 63)
                    .foregroundColor(.white)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: 70)
        .background(Color.CustomYellowLight)
    }
    
    func saveMeals() {
        let encodedData = try? JSONEncoder().encode(meals)
        UserDefaults.standard.set(encodedData, forKey: mealsKey)
    }
    
    func loadMeals() {
        if let encodedData = UserDefaults.standard.data(forKey: mealsKey),
           let savedMeals = try? JSONDecoder().decode([Meal].self, from: encodedData) {
            meals = savedMeals
        }
    }
    
    func updateCurrentDate() {
        currentDate = Date()
    }
    
    func totalCaloriesForToday() -> Int {
        let total = meals.filter { isMealForToday($0) }.reduce(0) { $0 + $1.calories }
        return total
    }
    
    func isMealForToday(_ meal: Meal) -> Bool {
        let calendar = Calendar.current
        return calendar.isDate(meal.date, inSameDayAs: currentDate)
    }
}

struct Meal: Codable, Hashable {
    var foodType: String
    var calories: Int
    var date: Date
}
