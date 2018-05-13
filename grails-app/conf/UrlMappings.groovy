class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

//        "/"(view:"/index")
        "/"(controller:"home", action:"index")
        "500"(view:'/error')
        "/aboutUs"(controller:"aboutUs", action:'index')
        "/collection/$collectionId"(controller:"collection", action:"show")
        "/item/$itemId"(controller:"item", action:"show", method:"GET")

	}
}
