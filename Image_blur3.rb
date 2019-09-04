class Image 

  def initialize(image)
      @image = image  
  end 

  def find_one
    ones = []
    @image.each_with_index do |row, row_number|
    row.each_with_index do |item, item_number|
    if item == 1
      ones << [row_number, item_number]
        end 
      end 
    end 
    ones
  end

  def image_blur(distance)
    #distance = gets.chomp.to_i
    ones = find_one 
    @image.each_with_index do |row, row_number|
      row.each_with_index do |item, item_number|
        ones.each do |found_row_number, found_column_number|
          if manhattan_distance(item_number, row_number, found_column_number, found_row_number) <= 
          distance
          @image[row_number][item_number] = 1
            
          end
        end
      end
    end 
  end
  
  def manhattan_distance(x1, y1, x2, y2)
    horizontal_distance = (x2 - x1).abs
    vertical_distance = (y2 - y1).abs
    horizontal_distance + vertical_distance
  end

  def output_image
      @image.each do |x|
      puts x.join
      end 
  end 
  row0 = [0, 0, 0, 0, 0, 0, 0, 0]
  row1 = [0, 0, 0, 0, 0, 0, 0, 0]
  row2 = [0, 0, 1, 0, 0, 0, 0, 0]
  row3 = [0, 0, 0, 0, 1, 0, 0, 0]
  row4 = [0, 0, 0, 0, 0, 0, 0, 0]
  row5 = [0, 0, 0, 0, 0, 0, 0, 0]
  row6 = [0, 0, 0, 0, 0, 0, 0, 0]

  image = Image.new (
      [row0, row1, row2, row3, row4, row5, row6]
  )
  
  image.image_blur(3)
  image.output_image
end
