module ApplicationHelper
  def sortable(attribute)
    direction = attribute == sort_default && direction_default == "asc" ? "desc" : "asc"
    link_to attribute, :sort => attribute, :direction => direction
  end
end
