# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do |i|
  Post.create(title: "Article #{i+1}", author: "Gabriel", body: "Lorem Elsass ipsum gewurztraminer Spätzle tellus suspendisse eleifend hopla Wurschtsalad Heineken dolor munster hop merci vielmols kartoffelsalad Kabinetpapier kuglopf libero, amet schnaps Yo dû. Mauris Richard Schirmeck ante vielmols, wurscht porta hopla ch'ai blottkopf, dui Chulia Roberstau sit geïz bissame mollis baeckeoffe non amet, sed Carola wie sagittis turpis, s'guelt quam. picon bière non yeuh. adipiscing schneck flammekueche und Pfourtz ! Oberschaeffolsheim ullamcorper Strasbourg ac leverwurscht Morbi habitant météor Miss Dahlias varius schpeck hoplageiss libero. in, leo tellus risus, geht's purus elementum Hans id knepfle so Gal. vulputate condimentum réchime hopla morbi kougelhopf sit tristique gravida barapli eget Oberschaeffolsheim Salut bisamme libero, chambon amet ornare messti de Bischheim et quam, aliquam jetz gehts los nüdle Salu bissame salu ornare senectus consectetur ac gal pellentesque commodo mamsell sit rhoncus Christkindelsmärik Gal ! dignissim hopla nullam rucksack placerat auctor, DNA, lacus Racing. turpis id, elit Huguette leo tchao bissame rossbolla knack Verdammi semper sed mänele lotto-owe ftomi! Chulien Pellentesque Coopé de Truchtersheim bredele .")
end
