import Vapor

var image = Image()
image.id = 1
image.title = "Willy"
image.voteCount = 0
image.imageURL = "http://www.gooogle.com"

var imageList = ImageList()
imageList.images.append(image)


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
