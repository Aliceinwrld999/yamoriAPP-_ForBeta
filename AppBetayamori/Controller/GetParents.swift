//
//  GetParents.swift
//  YamoriApp#1 2022
//
//  Created by Takashi Shigeta on 2022/02/17.
//

import SwiftUI

//MARK: - 配列をソートするメソッド

func getMusic(tagArray : [TagDataModel]) -> [TagDataModel]{
    var words: [TagDataModel] = []
    
    for elem in tagArray{
        if elem.parent == "music"{
            words.append(elem)
        }
    }
    return words
}

func getActivity() -> [TagDataModel]{
    var words: [TagDataModel] = []
    
    for elem in MyTagDataArray{
        if elem.parent == "activity"{
            words.append(elem)
        }
    }
    return words
}

func getComedy() -> [TagDataModel]{
    var words: [TagDataModel] = []
    
    for elem in MyTagDataArray{
        if elem.parent == "comedy"{
            words.append(elem)
        }
    }
    return words
}
func getMovie() -> [TagDataModel]{
    var words: [TagDataModel] = []
    
    for elem in MyTagDataArray{
        if elem.parent == "movie"{
            words.append(elem)
        }
    }
    return words
}

func getAnimation() -> [TagDataModel]{
    var words: [TagDataModel] = []
    
    for elem in MyTagDataArray{
        if elem.parent == "animation"{
            words.append(elem)
        }
    }
    return words
}
func getStage() -> [TagDataModel]{
    var words: [TagDataModel] = []
    
    for elem in MyTagDataArray{
        if elem.parent == "stage"{
            words.append(elem)
        }
    }
    return words
}
func getArt() -> [TagDataModel]{
    var words: [TagDataModel] = []
    
    for elem in MyTagDataArray{
        if elem.parent == "art"{
            words.append(elem)
        }
    }
    return words
}
func getSports() -> [TagDataModel]{
    var words: [TagDataModel] = []
    
    for elem in MyTagDataArray{
        if elem.parent == "sports"{
            words.append(elem)
        }
    }
    return words
}
func getHobby() -> [TagDataModel]{
    var words: [TagDataModel] = []
    
    for elem in MyTagDataArray{
        if elem.parent == "hobby"{
            words.append(elem)
        }
    }
    return words
}

func getGame() -> [TagDataModel]{
    var words: [TagDataModel] = []
    
    for elem in MyTagDataArray{
        if elem.parent == "game"{
            words.append(elem)
        }
    }
    return words
}

func getEmtertainment() -> [TagDataModel]{
    var words: [TagDataModel] = []
    
    for elem in MyTagDataArray{
        if elem.parent == "entertainment"{
            words.append(elem)
        }
    }
    return words
}

func getPlace() -> [TagDataModel]{
    var words: [TagDataModel] = []
    
    for elem in MyTagDataArray{
        if elem.parent == "place"{
            words.append(elem)
        }
    }
    return words
}

func getFood() -> [TagDataModel]{
    var words: [TagDataModel] = []
    
    for elem in MyTagDataArray{
        if elem.parent == "food"{
            words.append(elem)
        }
    }
    return words
}

func getFashion() -> [TagDataModel]{
    var words: [TagDataModel] = []
    
    for elem in MyTagDataArray{
        if elem.parent == "fashion"{
            words.append(elem)
        }
    }
    return words
}

func getBook() -> [TagDataModel]{
    var words: [TagDataModel] = []
    
    for elem in MyTagDataArray{
        if elem.parent == "book"{
            words.append(elem)
        }
    }
    return words
}
func getComic() -> [TagDataModel]{
    var words: [TagDataModel] = []
    
    for elem in MyTagDataArray{
        if elem.parent == "comic"{
            words.append(elem)
        }
    }
    return words
}

//MARK: - 配列を二分割して、二つの配列にソート

func divideInTwo(data: [TagDataModel])-> (upper: [TagDataModel], down: [TagDataModel]){
    var upper: [TagDataModel] = []
    var down : [TagDataModel] = []
    let allCount = data.count
    let checkRemain = allCount % 2
    let dividedNum: Int = allCount/2
    var Count :Int = 0
    let sortedByParent = data.sorted(by: {$0.parent > $1.parent})
    
    if  checkRemain == 0{
        
        for elem in sortedByParent{
            
            if Count<dividedNum{
                Count += 1
                upper.append(elem)
            }else{
                Count += 1
                down.append(elem)
            }
        }
        
    }else{
        for elem in sortedByParent{
            
            if Count<=dividedNum{
                Count += 1
                upper.append(elem)
            }else{
                Count += 1
                down.append(elem)
            }
        }
        
        
    }
    
    return (upper, down)
}
