import SwiftUI
import MapKit

// 餐廳分類
struct Category: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let restaurants: [Restaurant]
}

// 餐廳數據
struct Restaurant: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let imageName: String
    let location: CLLocationCoordinate2D
    let website: String
    let rate: String
}

struct ContentView: View {
    // 分類
    let categories = [
        Category(
            name: "正餐",
            imageName: "chinese_food",
            restaurants: [
                Restaurant(
                    name: "藝廚",
                    description: "極好吃 調味恰到好處 加一顆半熟蛋 完美",
                    imageName: "藝廚1",
                    location: CLLocationCoordinate2D(latitude: 22.665634, longitude: 120.319299),
                    website:
                        "https://www.ubereats.com/tw/store/%E8%97%9D%E5%BB%9A/jj9DKF1ySS2ZiLrVnF1Kgw?diningMode=DELIVERY&ps=1",
                    rate: "🍆🍆🍆🍆🍆"
                ),
                Restaurant(
                    name: "咕嚕咕嚕家うちりょうり 巨蛋裕誠叁店",
                    description: "咖哩的上面融化的起司加上炸好的唐揚雞 扮在一起相當適合",
                    imageName: "咕嚕1",
                    location: CLLocationCoordinate2D(latitude: 22.665562, longitude: 120.307290),
                    website:
                        "https://www.ubereats.com/tw/store/%E5%92%95%E5%9A%95%E5%92%95%E5%9A%95%E5%AE%B6%E3%81%86%E3%81%A1%E3%82%8A%E3%82%87%E3%81%86%E3%82%8A-%E5%B7%A8%E8%9B%8B%E8%A3%95%E8%AA%A0%E5%8F%81%E5%BA%97/1Nopw4TeTy2sD8yovnyyJw?diningMode=DELIVERY&ps=1",
                    rate: "🍆🍆🍆🍆"
                ),
                Restaurant(
                    name: "牛小弟牛排 總店",
                    description: "開在黃昏市場的鐵板牛排 蘑菇醬讚👍",
                    imageName: "牛小弟1",
                    location: CLLocationCoordinate2D(latitude: 22.660542, longitude: 120.321258),
                    website:
                        "https://www.ubereats.com/tw/store/%E7%89%9B%E5%B0%8F%E5%BC%9F%E7%89%9B%E6%8E%92-%E7%B8%BD%E5%BA%97/WQzokfP0RSywntUCvhwCvQ?diningMode=DELIVERY&ps=1",
                    rate: "🍆🍆🍆🍆"
                ),
            ]
        ),
        Category(
            name: "宵夜",
            imageName: "japanese_food",
            restaurants: [
                Restaurant(
                    name: "三鳳宮廟口幽靈香腸",
                    description: "最適合晚上吃 特別的爽",
                    imageName: "幽靈1",
                    location: CLLocationCoordinate2D(latitude: 22.635338, longitude: 120.293847),
                    website:
                        "https://www.ubereats.com/tw/store/%E4%B8%89%E9%B3%B3%E5%AE%AE%E5%BB%9F%E5%8F%A3%E5%B9%BD%E9%9D%88%E9%A6%99%E8%85%B8/0eF7n859QaylosPR7aMiVQ?diningMode=DELIVERY&ps=1",
                    rate: "🍆🍆🍆🍆🍆"
                ),
                Restaurant(
                    name: "早到晚到 左營巨蛋店",
                    description: "比較鹹但九層塔算香 蛤蠣很小 半夜不知道吃什麼可以點這個",
                    imageName: "早到1",
                    location: CLLocationCoordinate2D(latitude: 22.670021, longitude: 120.300642),
                    website:
                        "https://www.ubereats.com/tw/store/%E6%97%A9%E5%88%B0%E6%99%9A%E5%88%B0-%E5%B7%A6%E7%87%9F%E5%B7%A8%E8%9B%8B%E5%BA%97/lmayJ7GIXfuSMTy5j7tkxw?diningMode=PICKUP&",
                    rate: "🍆🍆🍆"
                ),
            ]
        ),
        Category(
            name: "飲料",
            imageName: "drink",
            restaurants: [
                Restaurant(
                    name: "小茶齋 高雄富民店",
                    description: "很好喝珍珠也不吃 不會讓人很膩的黑糖鮮奶",
                    imageName: "小茶齋1",
                    location: CLLocationCoordinate2D(latitude: 22.660725, longitude: 120.305330),
                    website: "https://www.ubereats.com/tw/store/%E5%B0%8F%E8%8C%B6%E9%BD%8B-%E9%AB%98%E9%9B%84%E5%AF%8C%E6%B0%91%E5%BA%97/uW-FO6g2TpyvIvbA47p_0A?diningMode=DELIVERY&ps=1",
                    rate: "🍆🍆🍆🍆🍆"
                ),
                Restaurant(
                    name: "麻古茶坊MACU TEA 裕誠店",
                    description: "老樣子 高雄太熱運動完適合喝一杯",
                    imageName: "麻古1",
                    location: CLLocationCoordinate2D(latitude: 22.663915, longitude: 120.311425),
                    website: "https://www.ubereats.com/tw/store/%E9%BA%BB%E5%8F%A4%E8%8C%B6%E5%9D%8Amacu-tea-%E8%A3%95%E8%AA%A0%E5%BA%97/IHx55S9CQaGulDwPMBFpEQ?diningMode=DELIVERY",
                    rate: "🍆🍆🍆"
                ),
            ]
        ),
        Category(
            name: "甜點",
            imageName: "dessert",
            restaurants: [
                Restaurant(
                    name: "瘋仙草 辛亥店",
                    description: "這家料都好吃 甜度也剛剛好 也是消暑必點 只是我不會點芋頭 剛好芋頭的有照片而已",
                    imageName: "瘋仙草1",
                    location: CLLocationCoordinate2D(latitude: 22.664289, longitude: 120.309547),
                    website: "https://www.ubereats.com/tw/store/%E5%B0%8F%E8%8C%B6%E9%BD%8B-%E9%AB%98%E9%9B%84%E5%AF%8C%E6%B0%91%E5%BA%97/uW-FO6g2TpyvIvbA47p_0A?diningMode=DELIVERY&ps=1",
                    rate: "🍆🍆🍆🍆🍆"
                ),
                Restaurant(
                    name: "行事紅心粉圓",
                    description: "主打一個古早味 他們家的粉圓有多一個香氣 偷懶不去買的話就會點外送",
                    imageName: "行事1",
                    location: CLLocationCoordinate2D(latitude: 22.623808, longitude: 120.320149),
                    website: "https://www.ubereats.com/tw/store/%E8%A1%8C%E4%BA%8B%E7%B4%85%E5%BF%83%E7%B2%89%E5%9C%93/q3eA4CGWT6WAJKVwIv5eTw?diningMode=DELIVERY&ps=1",
                    rate: "🍆🍆🍆🍆🍆"
                ),
                Restaurant(
                    name: "樹泡芙 sugoeat 五福店",
                    description: "珍珠奶茶口味搭配的很自然 很香且不會死甜",
                    imageName: "樹泡芙1",
                    location: CLLocationCoordinate2D(latitude: 22.629183,  longitude: 120.284212),
                    website: "https://www.ubereats.com/tw/store/%E6%A8%B9%E6%B3%A1%E8%8A%99-sugoeat-%E4%BA%94%E7%A6%8F%E5%BA%97/94Qqs0-ATduEj0CD-SuzJg?diningMode=DELIVERY&ps=1",
                    rate: "🍆🍆🍆🍆"
                ),
            ]
        )
    ]

    
    var body: some View {
        NavigationView {
            ZStack {
                // 添加全屏背景
                Image("bg")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                
                // 内容
                List(categories) { category in
                    NavigationLink(destination: RestaurantListView(category: category)) {
                        HStack {
                            Text(category.name)
                                .font(.title)
                                .frame(maxWidth: .infinity, alignment: .center)// 讓文字置中
                                .foregroundColor(.white) // 把字變成白色
                                
                        }
                        .padding(.vertical, 20)
                        .background(Color.black.opacity(0.4)) // 微透明背景
                        .cornerRadius(20)
                    }
                    .listRowBackground(Color.clear)
                }
                .listStyle(PlainListStyle())
                .background(Color.clear)
            }
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("餐廳分類")
                        .font(.system(size: 40, weight: .bold))
                        .padding(.top, 40) // 調整頂部間距
                        .foregroundColor(.black)
                }
            }
        }
    }
}

struct RestaurantListView: View {
    var category: Category
    
    var body: some View {
        ZStack {
            Image("bg")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            List(category.restaurants) { restaurant in
                NavigationLink(destination: RestaurantDetailView(restaurant: restaurant)) {
                    HStack {                        
                        VStack(alignment: .leading) {
                            Text(restaurant.name)
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, alignment: .center) // 讓文字置中
                            Text("推薦：\(restaurant.rate)")
                                .font(.subheadline)
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, alignment: .center) // 讓文字置中
                        }
                    }
                    .padding(.vertical, 20)
                    .background(Color.black.opacity(0.4))
                    .cornerRadius(10)
                }
                .listRowBackground(Color.clear)
            }
            .listStyle(PlainListStyle())
            .background(Color.clear)
        }
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text(category.name)
                    .font(.system(size: 24, weight: .bold))
                    .padding(.top, 10) // 調整頂部間距
                    .foregroundColor(.black)
            }
        }
    }
}

struct RestaurantDetailView: View {
    var restaurant: Restaurant
    @State private var animate = false
    
    var body: some View {
        ZStack {
            Image("bg")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            ScrollView {
                VStack(alignment: .leading, spacing: 15) {
                    HStack {
                        Text(restaurant.name)
                            .font(.title)
                            .bold()
                            .foregroundColor(.white)
                        Spacer()
                        Image(systemName: "star.fill")//加一個會跳的星星
                            .foregroundColor(.yellow)
                            .symbolEffect(.bounce, options: .repeat(3), value: animate)
                            .onAppear {
                                animate = true
                            }
                    }
                    
                    Image(restaurant.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .shadow(radius: 5)
                    
                    Text(restaurant.description)
                        .font(.body)
                        .foregroundColor(.white)
                    
                    MapView(coordinate: restaurant.location)
                        .frame(height: 200)
                        .cornerRadius(20)
                    
                    Text("[Ubereats](\(restaurant.website))")
                        .font(.body)
                        .foregroundColor(.gray)
                        .onTapGesture {
                            if let url = URL(string: restaurant.website) {
                                UIApplication.shared.open(url)
                            }
                        }
                }
                .padding()
                .background(Color.black.opacity(0.5))
                .cornerRadius(20)
                .padding()
            }
            .navigationTitle(restaurant.name)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

//設定Map
struct MapView: View {
    var coordinate: CLLocationCoordinate2D

    @State private var region = MKCoordinateRegion()

    var body: some View {
        Map(coordinateRegion: $region, annotationItems: [AnnotationItem(coordinate: coordinate)]) { item in
            MapMarker(coordinate: item.coordinate, tint: .red)
        }
        .onAppear {
            setRegion(coordinate)
        }
    }

    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        )
    }
}

struct AnnotationItem: Identifiable {
    let id = UUID()
    var coordinate: CLLocationCoordinate2D
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
