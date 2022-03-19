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
                    Text("الاسم: \(coronaNewCases[0].fullName)")
// المنطقة
                Text("المنطقة: \(coronaNewCases[0].area)")
                    // عدد الجرعات
               Text("عدد الجرعات: \(coronaNewCases[0].numberofDoses)")

                Divider()
                }
                VStack{
        // الحالة الثانية
                // الاسم
               Text("الاسم: \(coronaNewCases[1].fullName)")
                // المنطقة
               Text("المنطقة: \(coronaNewCases[1].area)")
    // عدد الجرعات
               Text("عدد الجرعات: \(coronaNewCases[1].numberofDoses)")

                Divider()
                }
                VStack{
              // الحالة الثالثة
                      // الاسم
                     Text("السم: \(coronaNewCases[2].fullName)")
                      // المنطقة
                     Text("االمنطقة: \(coronaNewCases[2].area)")
          // عدد الجرعات
                     Text("عدد الجرعات: \(coronaNewCases[2].numberofDoses)")
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






