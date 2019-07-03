class Image
  attr_accessor :image, :location

  def initialize(table)
   @image = table
  end
  
  def output_image
    @image.each do |arr|
      puts arr.join(" ")
    end
  end

  def set_up(x, y)
    @image[x][y - 1] = 1 unless y == 0
    @image[x][y + 1] = 1 unless y == 3
    @image[x - 1][y] = 1 unless x == 0
    @image[x + 1][y] = 1 unless x == 3
  end

  def blur
    @location = []
    @image.each_with_index do |arr, x|
      arr.each_with_index do |values, y|
        if values == 1
          location.push [x, y]
        end
      end
    end
      @location
    end
    
  def change 
    blur.each do |x_value, y_value|
      set_up(x_value, y_value)
    end
  end 
end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])

puts "Original Image from Image Blur 1"
image.output_image
puts " "
puts "Image Blur 2 Image"
image.change
image.output_image