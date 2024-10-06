# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.create!(
    user_id: "yokogawa@xxxl.com",
    password: "y",
    name: "横川",
    address: "T都N区",
)

User.create!(
    user_id: "michel@ooo.com",
    password: "m",
    name: "マイケル",
    address: "T都H区",
)

User.create!(
    user_id: "suzumiya@xxx.com",
    password: "s",
    name: "鈴宮",
    address: "O府M市",
)

User.create!(
    user_id: "aoe@dddd.ne.jp",
    password: "y",
    name: "青江",
    address: "S県E市",
)

Category.create!(
    category_id: 1,
    name: "鞄",
)

Category.create!(
    category_id: 2,
    name: "帽子",
)

Item.create!(
    item_id: 1,
    name: 'ひよこバック',
    manufacturer: '太陽製作所',
    category_id: 1,
    color: '黄',
    price: 3500,
    stock: 10,
    recommended: false
)

Item.create!(
    item_id: 2,
    name: 'あさがお鞄',
    manufacturer: '太陽製作所',
    category_id: 1,
    color: '薄紫',
    price: 4000,
    stock: 12,
    recommended: false
)

Item.create!(
    item_id: 3,
    name: '白百合学生鞄',
    manufacturer: '太陽製作所',
    category_id: 1,
    color: '薄紫',
    price: 6000,
    stock: 8,
    recommended: true
)

Item.create!(
    item_id: 4,
    name: 'キャンディバック',
    manufacturer: '太陽製作所',
    category_id: 1,
    color: 'ピンク',
    price: 2000,
    stock: 3,
    recommended: false
)

Item.create!(
    item_id: 5,
    name: 'どんぐりのぼうしかばん',
    manufacturer: '太陽製作所',
    category_id: 1,
    color: '茶',
    price: 4500,
    stock: 8,
    recommended: false
)

Item.create!(
    item_id: 6,
    name: 'バックパッカー風遮光帽子',
    manufacturer: 'ムーンライト工房',
    category_id: 2,
    color: '黒',
    price: 2000,
    stock: 5,
    recommended: false
)

Item.create!(
    item_id: 7,
    name: '月の光楽譜プリントハット',
    manufacturer: 'ムーンライト工房',
    category_id: 2,
    color: '白',
    price: 3000,
    stock: 6,
    recommended: false
)

Item.create!(
    item_id: 8,
    name: 'モネ風プリント帽子',
    manufacturer: 'ムーンライト工房',
    category_id: 2,
    color: '水色',
    price: 5000,
    stock: 7,
    recommended: false
)

Item.create!(
    item_id: 9,
    name: 'おおくぼうし鞄',
    manufacturer: 'ムーンライト工房',
    category_id: 1,
    color: '灰色',
    price: 5000,
    stock: 9,
    recommended: false
)

Item.create!(
    item_id: 10,
    name: '天使のわっか帽子',
    manufacturer: 'ムーンライト工房',
    category_id: 2,
    color: '黄色',
    price: 2000,
    stock: 14,
    recommended: false
)
