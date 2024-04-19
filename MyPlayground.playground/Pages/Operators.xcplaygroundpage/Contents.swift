
import Foundation

 
var likeCount: Double = 5
var commentCount: Double = 0
var viewCount: Double = 100


likeCount = likeCount + 1
likeCount += 1

likeCount = likeCount - 1
likeCount -= 1

likeCount = likeCount * 1
likeCount *= 1

likeCount = likeCount / 1
likeCount /= 1

// Order of operations matters
likeCount = likeCount + 1 * 2
likeCount = (likeCount + 1) * 2

likeCount = 5

likeCount += 1

if likeCount == 5 {
    print("Post has 5 likes")
} else {
    print("Post dos not have 5 likes")
}

if likeCount != 5 {
    print("Post dos not have 5 likes")
}

if likeCount > 5 {
    print("Post has more than 5 likes")
}
if likeCount >= 5 {
    print("Post has more or equal to 5 likes")
}
if likeCount < 5 {
    print("Post has less than 5 likes")
}
if likeCount <= 5 {
    print("Post has less or equal to 5 likes")
}

if likeCount > 3 && commentCount > 0 {
    print("Post has more than 3 likes AND more than 0 comments")
} else {
    print("Post has 3 or less likes AND 0 or less comments")
}

if likeCount > 3 || commentCount > 0 {
    print("Post has more than 3 likes OR more than 0 comments")
} else {
    print("Post has 3 or less likes AND 0 or less comments")
}

var userIsPremium: Bool = true
var userIsNew: Bool = false

if userIsPremium && userIsNew {
    print("We have a new premium user")
}

if likeCount > 3 && commentCount > 0 || viewCount > 50 {
     print("EXECUTE")
}

if likeCount > 3 && (commentCount > 0 || viewCount > 100) {
     print("EXECUTE")
}
