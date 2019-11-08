# image-blur-3
Image blur 3 challenge - University of Arizona Coding Bootcamp

starting "image":
  row0 = [0, 0, 0, 0, 0, 0, 0, 0]
  row1 = [0, 0, 0, 0, 0, 0, 0, 0]
  row2 = [0, 0, 1, 0, 0, 0, 0, 0]
  row3 = [0, 0, 0, 0, 1, 0, 0, 0]
  row4 = [0, 0, 0, 0, 0, 0, 0, 0]
  row5 = [0, 0, 0, 0, 0, 0, 0, 0]
  row6 = [0, 0, 0, 0, 0, 0, 0, 0]
  
---------------------------------
image.image_blur(1)
image.output_image

===>  00000000
      00100000
      01111000
      00111100
      00001000
      00000000
      00000000
      
---------------------------------
image.image_blur(2)
image.output_image

===>  00100000
      01111000
      11111100
      01111110
      00111100
      00001000
      00000000
