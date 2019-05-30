module ApplicationHelper
  # @param [Int] state
  def render_state(state)
    ico_defy(state).html_safe
  end

  def get_icon(img, mode)
    'icons/' + (img + 1).to_s + mode.to_s + '.png'
  end

  def render_image(img, mode)
    image_tag(get_icon(img, mode), class: 'icon_image', onClick: 'update_progress(this)')
  end

  def ico_defy(number)
    images = ''
    (0..3).each do |i|
      images += if number != i
                  render_image(i, 'u')
                else
                  render_image(i, 'd')
                end
    end
    images
  end
end
