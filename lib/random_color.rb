# Generate a random color
# origin: http://victorcoulon.fr/generating-random-color-in-sass/

module Sass::Script::Functions
  def random_color()
    Sass::Script::Color.new([rand(255), rand(255), rand(255)])
  end
end
