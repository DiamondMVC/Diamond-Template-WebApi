/**
* Copyright © DiamondMVC 2016-2017
* License: MIT (https://github.com/DiamondMVC/Diamond-Template-WebApi/blob/master/LICENSE)
* Author: Jacob Jensen (bausshf)
*/
module controllers.homecontroller;

import diamond.controllers;

/// The home controller.
final class HomeController : Controller!HomeController
{
  import vibe.d : HTTPServerRequest, HTTPServerResponse;
  import diamond.http : Route;

  public:
  final:
  /**
  * Creates a new instance of the home controller.
  * Params:
  *   request =  The request passed to the controller.
  *   response = The response passed to the controller.
  *   route =    The route passed to the controller.
  */
  this(HTTPServerRequest request, HTTPServerResponse response, Route route)
  {
    super(request,response,route,this);
  }

  /// Route: / | /home
  @HttpDefault Status home()
  {
    return jsonString(q{{
      "message": "Hello Diamond!"
    }});
  }
}
