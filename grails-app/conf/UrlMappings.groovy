class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/index")
        "500"(view:'/error')

        "/collection/$collectionId"(controller:"collection", action:"show")
        "/item/$itemId"(controller:"item", action:"show", method:"GET")

	}
}
