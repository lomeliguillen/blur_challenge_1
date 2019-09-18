class Image
  attr_accessor :image

  def initialize(image)
    @image = image
  end


  def output_image
    image.each do |x|
      x.each do |cell|
        print cell.to_s
      end
      puts
    end
  end

  # blur 2 challenge
  def blur
  
    blured = Marshal.load(Marshal.dump(image))

    image.each_with_index do |row, row_index|
      row.each_with_index do |value, column_index|

        if value == 1 
          blured[row_index][column_index+1] = 1 if row.size > column_index + 1
          blured[row_index - 1][column_index] = 1 if row_index > 0
          blured[row_index + 1][column_index] = 1 if image.size > row_index + 1
          blured[row_index][column_index-1] = 1 if column_index > 0

        end
      end
    end
          
    blured.each do |row| 
      row.each do |coumn| 
        print coumn.to_s
      end 
      puts 
    end
       
  end


end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 0],
  [0, 0, 0, 0],
  [0, 0, 0, 0],
  [0, 0, 0, 1]
])

image.blur


