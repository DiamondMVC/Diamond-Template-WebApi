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
  public:
  final:
  /**
  * Creates a new instance of the home controller.
  * Params:
  *   client =  The client passed to the controller.
  */
  this(HttpClient client)
  {
    super(client);
  }

  /// Route: / | /home
  @HttpDefault Status home()
  {
    return jsonString(q{{
      "message": "Hello Diamond!"
    }});
  }
}
