import '../model/models.dart';

final List<Category> mockCategories = [
  Category(
    name: "Dairy & Eggs",
    image: "assets/images/dairy&egg.png",
    subCategories: [
      SubCategory(
        name: "Milk",
        products: [
          Product(id: "p1", name: "Lactaid Fat Free Pure Milk", image: "assets/images/lactaidfate.png", price: 15, weight: "20 mg"),
          Product(id: "p2", name: "Lactaid Whole Pure Milk", image: "assets/images/lactaidwhole.png", price: 35, weight: "22 mg"),
          Product(id: "p3", name: "Lactaid Whole Milk", image: "assets/images/lactaidwhole1.jpg", price: 10, weight: "20 mg"),
          Product(id: "p4", name: "Lactaid Reduced Fat 2% Milk", image: "assets/images/lactaidreduce.png", price: 25, weight: "20 mg"),
          Product(id: "p5", name: "Organic oatmilk", image: "assets/images/originaloatmilk.jpeg", price: 25, weight: "25 mg"),
          Product(id: "p6", name: "Vannilla Oatmilk", image: "assets/images/vanilaoatmilk.jpg", price: 25, weight: "25 mg"),
         ],
      ),
      SubCategory(
        name: "Ice cream",
        products: [
          Product(id: "p7", name: "Birthday Special", image: "assets/images/birthdayspecial.jpg", price: 70, weight: "70 mg"),
          Product(id: "p8", name: "Purple Yam", image: "assets/images/purpleyarm.png", price: 35, weight: "20 mg"),
          Product(id: "p9", name: "chocolate icecream", image: "assets/images/chocolateicecream.jpg", price: 45, weight: "100 mg"),
          Product(id: "p10", name: "Amarican nuts", image: "assets/images/amaricannuts.jpeg", price: 45, weight: "50 mg"),
          Product(id: "p11", name: "orange icecream", image: "assets/images/orangeicecream.jpg", price: 25, weight: "30 mg"),
        ],
      ),
      SubCategory(
        name: "Eggs",
        products: [
          Product(id: "p12", name: "pure egges pack of 12", image: "assets/images/freshegg.jpg", price: 120, weight: "200 mg"),
          Product(id: "p13", name: "fresh eggs pack of 8", image: "assets/images/egg2.jpg", price: 80, weight: "150 mg"),
        ],
      ),
    ],
  ),
  Category(
    name: "Snacks",
    image: "assets/images/snacks.png",
    subCategories: [
      SubCategory(
        name: "Chips",
        products: [
          Product(id: "p14", name: "Classic Lays", image: "assets/images/lays.jpg", price: 5, weight: "30 mg"),
          Product(id: "p15", name: "Spicy Doritos", image: "assets/images/doritos.jpg", price: 7, weight: "32 mg"),
          Product(id: "p16", name: "Magic Masala Lays", image: "assets/images/lays1.jpg", price: 10, weight: "60 mg"),
          Product(id: "p17", name: "Magic Banana Chips", image: "assets/images/bananachips.png", price: 40, weight: "80 mg"),
        ],
      ),

      SubCategory(
        name: "Cookies",
        products: [
          Product(id: "p18", name: "Choco Chip", image: "assets/images/chocochips.jpg", price: 22, weight: "85 mg"),
          Product(id: "p19", name: "Oatmeal Raisin", image: "assets/images/oatmeal.jpg", price: 20, weight: "80 mg"),
          Product(id: "p20", name: "chocobackes Cookies ", image: "assets/images/coockies1.png", price: 30, weight: "200 mg"),
          Product(id: "p21", name: "Coconut Cookies", image: "assets/images/coconut.png", price: 70, weight: "100 mg"),
        ],
      ),
    ],
  ),
  Category(
    name: "Seafood",
    image: "assets/images/seafood.png",
    subCategories: [
      SubCategory(
        name: "Fresh Fish",
        products: [
          Product(id: "p22",name: "Salmon Fillet",image: "assets/images/salmon_fillet.png", price: 50, weight: "100 g"),
          Product(id: "p23",name: "Cod Fillet",image: "assets/images/cod_fillet.png",price: 45,weight: "100 g"),
          Product(id: "p24",name: "Whole Sea Bass",image: "assets/images/sea_bass.png",price: 120,weight: "per piece"),
        ],
      ),
      SubCategory(
        name: "Shellfish",
        products: [
          Product(id: "p25",name: "King Prawns", image: "assets/images/king_prawns.png",price: 70, weight: "250 g"),
          Product(id: "p26",name: "Fresh Mussels",image: "assets/images/mussels.png",price: 60, weight: "500 g"),
          Product(id: "p27",name: "Scallops",image: "assets/images/scallops.png",price: 85,weight: "200 g"),
        ],
      ),

      SubCategory(
        name: "Frozen Seafood",
        products: [
          Product(id: "p28",name: "Frozen Shrimp",image: "assets/images/frozen_shrimp.png",price: 120,weight: "500 g"),
          Product(id: "p29",name: "Breaded Fish Fillets",image: "assets/images/fish_fillets.png",price: 90,weight: "400 g"),
        ],
      ),

    ],
  ),
  Category(
    name: "Frozen Foods",
    image: "assets/images/frozen.png",
    subCategories: [
      SubCategory(
        name: "Frozen Pizza",
        products: [
          Product(id: "p30",name: "Pepperoni Pizza",image: "assets/images/pepperoni_pizza.png",price: 250,weight: "400 g"),
          Product(id: "p31",name: "Margherita Pizza",image: "assets/images/margherita_pizza.png",price: 220,weight: "350 g"),
        ],
      ),
      SubCategory(
        name: "Frozen Meals",
        products: [
          Product(id: "p32",name: "Frozen Lasagna",image: "assets/images/lasagna.png",price: 300,weight: "500 g"),
          Product(id: "p33",name: "Chicken & Rice Meal",image: "assets/images/chicken_rice.png", price: 180, weight: "300 g"),
        ],
      ),
      SubCategory(
        name: "Frozen Vegetables & Fruits",
        products: [
          Product(id: "p34",name: "Frozen Green Peas",image: "assets/images/green_peas.png", price: 90, weight: "500 g"),
          Product(id: "p35",name: "Frozen Mixed Berries",image: "assets/images/mixed_berries.png",price: 150,weight: "300 g"),
        ],
      ),

      SubCategory(
        name: "Ice Cream & Desserts",
        products: [
          Product(id: "p36",name: "Vanilla Ice Cream",image: "assets/images/vanilla_ice_cream.png", price: 160, weight: "1 Litre"),
          Product(id: "p37",name: "Chocolate Lava Cake",image: "assets/images/lava_cake.png",price: 120,weight: "2 pieces"),
        ],
      ),
    ],
  ),
];