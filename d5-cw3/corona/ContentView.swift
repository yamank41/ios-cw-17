//
//  ContentView.swift
//  corona
//
//  Created by Shaimaa on 07/02/2022.
//

import SwiftUI


// يجب عمل هيكل وكائنات من الهيكل


struct ContentView: View {
   var coronaNewCases = [
   UserCovidInfo(fullName: "sohib", area: "alrawdah", numberofDoses: 2),
   UserCovidInfo(fullName: "obidah", area: "girnadah", numberofDoses: 1),
   UserCovidInfo(fullName: "ali", area: "reggai", numberofDoses: 0)
   ]
    var body: some View {
        ZStack{
            Color.gray
                .opacity(0.3)
                .ignoresSafeArea()
            VStack{
                Image("corona")
                    .resizable()
                    .scaledToFit()
                Text("حالات كورونا الجديدة")
                    .font(.system(size: 30, weight: .bold, design: .default))
                    .padding()
                // name of new cases
                VStack{
        // الحالة الأولى
                // الاسم
                    List(coronaNewCases, id:\.id) {i in
                        Text("full name: \(i.fullName)")
                        Text("area: \(i.area)")
                        Text("numbe of doses: \(i.numberofDoses)")
                    }
                    Spacer()
                HStack{
                    Text("آخر تحديث ١٥-٣-٢٠٢٢")
                        .font(.system(size: 20, weight: .bold, design: .default))
                    Image(systemName: "repeat.circle.fill")
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0.5882, blue: 0.1961, alpha: 1)))
                        .font(.system(size: 30))
                }
                .padding()
                .border(Color.white, width: 5)
                .cornerRadius(10)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}






}
