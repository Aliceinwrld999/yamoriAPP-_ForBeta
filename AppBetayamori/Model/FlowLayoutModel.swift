
import SwiftUI

class FlowLayoutModel: ObservableObject {
    
    @State var words: [String] = []
    @Published var spacing: CGFloat = 8
    @Published var padding: CGFloat = 8
    @Published var wordCount: Int = 0
    @Published var alignmentIndex = 0
    
    
    @Published var Music : [String] = []
    @Published var Activity : [String] = []
    @Published var Comedy : [String] = []
    @Published var Movie : [String] = []
    @Published var Animation : [String] = []
    @Published var Stage : [String] = []
    @Published var Art : [String] = []
    @Published var Sports : [String] = []
    @Published var Hobby : [String] = []
    @Published var Game : [String] = []
    @Published var Entertainment : [String] = []
    @Published var Place : [String] = []
    @Published var Food : [String] = []
    @Published var Fashion : [String] = []
    @Published var Book : [String] = []
    @Published var Comic : [String] = []

    

    struct TagDataModel: Identifiable, Hashable {
        var id: String
        var name: String
        var parent: String

    }

    @Published var TagDataArray: [TagDataModel] = [
        TagDataModel(id: "nogi", name: "乃木坂46", parent: "music"),
        TagDataModel(id: "puri", name: "プリンセス天功", parent: "entertainment"),
        TagDataModel(id: "ziro", name: "二郎系", parent: "food"),
        TagDataModel(id: "asa", name: "朝マック", parent: "food"),
        TagDataModel(id: "kara", name: "カラオケ", parent: "hobby"),
        TagDataModel(id: "sara", name: "さらば青春の光", parent: "comedy"),
        TagDataModel(id: "kitto", name: "きっとうまくいく", parent: "movie"),
        TagDataModel(id: "harry", name: "ハリーポッター", parent: "movie"),
        TagDataModel(id: "sau", name: "サウナ", parent: "hobby"),
        TagDataModel(id: "shin", name: "進撃の巨人", parent: "animation"),
        TagDataModel(id: "dai", name: "大乱闘スマッシュブラザーズ", parent: "game"),
        TagDataModel(id: "suno", name: "スノボー", parent: "activity"),
        TagDataModel(id: "sake", name: "日本酒", parent: "food"),
        TagDataModel(id: "hiphop", name: "JPtheWavy", parent: "music"),
        TagDataModel(id: "ysl", name: "サンローラン", parent: "fashion"),
        TagDataModel(id: "beats", name: "ドクタードレ", parent: "music"),
        TagDataModel(id: "zone", name: "エナジードリンク", parent: "food"),
        TagDataModel(id: "tenichi", name: "天下一品", parent: "food"),
        TagDataModel(id: "iekei", name: "家系ラーメン", parent: "food"),
        TagDataModel(id: "rolling", name: "ローリングストーンズ", parent: "music"),
        TagDataModel(id: "doraemon", name: "ドラえもん", parent: "animation"),
        TagDataModel(id: "shinchan", name: "クレヨンしんちゃん", parent: "animation"),
        TagDataModel(id: "sakuke", name: "サスケ", parent: "game"),
        TagDataModel(id: "disney", name: "ディズニー", parent: "entertainment")
    ]
    
    @Published var tagCategoryList : [String : Color] = [
    
        "music" : Color(red: 1.0, green: 0.54, blue: 0.25) ,
        "activity" : Color(red: 0.53, green: 0.23, blue: 0.24),
        "comedy" : Color(red: 0.53, green: 0.29, blue: 0.18),
        "movie" : Color(red: 0.54, green: 0.17, blue: 0.28),
        "animation" : Color(red: 0.54, green: 0.44, blue: 0.01),
        "stage" : Color(red: 0.18, green: 0.33, blue: 0.48),
        "art" : Color(red: 0.35, green: 0.21, blue: 0.42),
        "sports" : Color(red: 0.07, green: 0.31, blue: 0.61),
        "hobby" : Color(red: 0.37, green: 0.50, blue: 0.12),
        "game" : Color(red: 0.20, green: 0.36, blue: 0.43),
        "entertainment" : Color(red: 0.39, green: 0.22, blue: 0.38),
        "place" : Color(red: 0.44, green: 0.78, blue: 0.73),
        "food" : Color(red: 0.76, green: 0.70, blue: 0.56),
        "fashion" : Color(red: 0.56, green: 0.66, blue: 0.87),
        "book" : Color(red: 0.36, green: 0.33, blue: 0.39),
        "comic" : Color(red: 0.55, green: 0.59, blue: 0.62)
    ]
    
    //MARK: - ここから配列をソートするメソッド
    init(){
        
    
    func getMusic() -> [TagDataModel]{
        var words: [TagDataModel] = []
        
        for elem in TagDataArray{
            if elem.parent == "music"{
                words.append(elem)
            }
        }
        return words
    }

    func getActivity() -> [TagDataModel]{
        var words: [TagDataModel] = []
        
        for elem in TagDataArray{
            if elem.parent == "activity"{
                words.append(elem)
            }
        }
        return words
    }

    func getComedy() -> [TagDataModel]{
        var words: [TagDataModel] = []
        
        for elem in TagDataArray{
            if elem.parent == "comedy"{
                words.append(elem)
            }
        }
        return words
    }
    func getMovie() -> [TagDataModel]{
        var words: [TagDataModel] = []
        
        for elem in TagDataArray{
            if elem.parent == "movie"{
                words.append(elem)
            }
        }
        return words
    }

    func getAnimation() -> [TagDataModel]{
        var words: [TagDataModel] = []
        
        for elem in TagDataArray{
            if elem.parent == "animation"{
                words.append(elem)
            }
        }
        return words
    }
    func getStage() -> [TagDataModel]{
        var words: [TagDataModel] = []
        
        for elem in TagDataArray{
            if elem.parent == "stage"{
                words.append(elem)
            }
        }
        return words
    }
    func getArt() -> [TagDataModel]{
        var words: [TagDataModel] = []
        
        for elem in TagDataArray{
            if elem.parent == "art"{
                words.append(elem)
            }
        }
        return words
    }
    func getSports() -> [TagDataModel]{
        var words: [TagDataModel] = []
        
        for elem in TagDataArray{
            if elem.parent == "sports"{
                words.append(elem)
            }
        }
        return words
    }
    func getHobby() -> [TagDataModel]{
        var words: [TagDataModel] = []
        
        for elem in TagDataArray{
            if elem.parent == "hobby"{
                words.append(elem)
            }
        }
        return words
    }

    func getGame() -> [TagDataModel]{
        var words: [TagDataModel] = []
        
        for elem in TagDataArray{
            if elem.parent == "game"{
                words.append(elem)
            }
        }
        return words
    }

    func getEmtertainment() -> [TagDataModel]{
        var words: [TagDataModel] = []
        
        for elem in TagDataArray{
            if elem.parent == "entertainment"{
                words.append(elem)
            }
        }
        return words
    }

    func getPlace() -> [TagDataModel]{
        var words: [TagDataModel] = []
        
        for elem in TagDataArray{
            if elem.parent == "place"{
                words.append(elem)
            }
        }
        return words
    }

    func getFood() -> [TagDataModel]{
        var words: [TagDataModel] = []
        
        for elem in TagDataArray{
            if elem.parent == "food"{
                words.append(elem)
            }
        }
        return words
    }

    func getFashion() -> [TagDataModel]{
        var words: [TagDataModel] = []
        
        for elem in TagDataArray{
            if elem.parent == "fashion"{
                words.append(elem)
            }
        }
        return words
    }

    func getBook() -> [TagDataModel]{
        var words: [TagDataModel] = []
        
        for elem in TagDataArray{
            if elem.parent == "book"{
                words.append(elem)
            }
        }
        return words
    }
    func getComic() -> [TagDataModel]{
        var words: [TagDataModel] = []
        
        for elem in TagDataArray{
            if elem.parent == "comic"{
                words.append(elem)
            }
        }
        return words
    }
    }


}

func getName() -> [String]{
    var words: [String] = []
    
    for elem in MyTagDataArray{
       words.append(elem.name)
    }
    return words
}


//    func sortByCategory(){
//           for category in TagDataArray{
//                let parentsName = category.parent
//                switch parentsName {
//                case "music":
//                    Music.append(parentsName)
//                case "activity" :
//                    Activity.append(parentsName)
//                case "comedy" :
//                    Comedy.append(parentsName)
//                case "movie" :
//                    Movie.append(parentsName)
//                case "animation" :
//                    Animation.append(parentsName)
//                case "stage" :
//                    Stage.append(parentsName)
//                case "art" :
//                    Art.append(parentsName)
//                case "spots" :
//                    Sports.append(parentsName)
//                case "hobby" :
//                    Hobby.append(parentsName)
//                case "game" :
//                    Game.append(parentsName)
//                case "entertainment" :
//                    Entertainment.append(parentsName)
//                case "place" :
//                    Place.append(parentsName)
//                case "food" :
//                    Food.append(parentsName)
//                case "fashion" :
//                    Fashion.append(parentsName)
//                case "book" :
//                    Book.append(parentsName)
//                case "comic" :
//                    Comic.append(parentsName)
//
//
//                default:
//                    print("this is default")
//                }
//            }
//        }
