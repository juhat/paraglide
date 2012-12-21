module ApplicationHelper
  def session_path(trash)
    '/auth/facebook'
  end

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

  def paraglide_amount(place)
    content_tag(:div, class: 'paraglide-amount') do
      content_tag(:span, t('.paraglide_amount', amount: place.amount) ) +
      if place.amount > 10
        image_tag('paraglides_lot.png')
      elsif place.amount > 3
        image_tag('paraglides_many.png')
      elsif place.amount > 0
        image_tag('paraglides_few.png')
      end +
      content_tag(:span, link_to( t('.observation'), place, class: 'btn' ))
    end
  end
end
