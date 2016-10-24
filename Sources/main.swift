import Vapor

var image = Image()
image.id = 1
image.title = "Fall"
image.voteCount = 0
image.imageURL = "https://www.landbetweenthelakes.us/wp-content/uploads/2013/11/hematite-fall-150x150.jpg"

var image2 = Image()
image2.id = 2
image2.title = "Spring"
image2.voteCount = 0
image2.imageURL = "https://www.tnwinc.com/wp-content/uploads/2013/04/slider-spring-150x150.png"

var image3 = Image()
image3.id = 3
image3.title = "Winter"
image3.voteCount = 0
image3.imageURL = "https://www.gofleet.com/wp-content/uploads/2015/10/Winter-Maintenance-150x150.png"

var image4 = Image()
image4.id = 4
image4.title = "Summer"
image4.voteCount = 0
image4.imageURL = "https://hypno-therapy.eu/wp-content/uploads/2014/11/Late-Summer-Beach-Walp-TW2010-150x150.png"


var imageList = ImageList()
imageList.images.append(image)
imageList.images.append(image2)
imageList.images.append(image3)
imageList.images.append(image4)

let drop = Droplet()

drop.get("list") { req in
    return try JSON(node: imageList)
}

drop.post("like/:id") { req in
    guard let imageId = req.parameters["id"]?.int else {
        throw Abort.badRequest
    }

    guard imageList.like(id: imageId) else {
        throw Abort.badRequest
    }

    return ""
}

drop.run()
