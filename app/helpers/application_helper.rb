module ApplicationHelper
  def distance_in_km(spot, surf_school)
    spot.distance_to(surf_school)
  end
end
