module ApplicationHelper
  def wind(place)
    content_tag( :table, class: 'wind') do
      content_tag( :tr ) do
        content_tag( :td, 'NW', class: place.wind_west_north ? 'wind' : '', alt: 'winder' ) +
        content_tag( :td, 'N', class: place.wind_north ? 'wind' : '') +
        content_tag( :td, 'NE', class: place.wind_north_east ? 'wind' : '' )
      end +
      content_tag( :tr ) do
        content_tag( :td, 'W', class: place.wind_west ? 'wind' : '' ) +
        content_tag( :td, '' ) +
        content_tag( :td, 'E', class: place.wind_east ? 'wind' : '' )
      end +
      content_tag( :tr ) do
        content_tag( :td, 'SW', class: place.wind_south_west ? 'wind' : '' ) +
        content_tag( :td, 'S', class: place.wind_south ? 'wind' : '' ) +
        content_tag( :td, 'SE', class: place.wind_east_south ? 'wind' : '' )
      end
    end
  end
end
