############################
# @author: Floriana Ciaglia
# @date: May 15, 2020
############################
import cv2
from matplotlib import pyplot as plt

#reading the image
image = cv2.imread('binaryThresholding.jpg')

#turning the image to gray scale 
gray = cv2.cvtColor(image,cv2.COLOR_BGR2GRAY)
thresh = cv2.threshold(gray, 0, 255, cv2.THRESH_BINARY_INV + cv2.THRESH_OTSU)[1]

# Remove horizontal
vertical_kernel = cv2.getStructuringElement(cv2.MORPH_RECT, (1, 25))
detected_lines = cv2.morphologyEx(thresh, cv2.MORPH_OPEN, vertical_kernel, iterations=2)
cnts = cv2.findContours(detected_lines, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
cnts = cnts[0] if len(cnts) == 2 else cnts[1]
for c in cnts:
    cv2.drawContours(image, [c], -1, (255,255,255), 2)

# Repair image
repair_kernel = cv2.getStructuringElement(cv2.MORPH_RECT, (1,1))
result = 255 - cv2.morphologyEx(255 - image, cv2.MORPH_CLOSE, repair_kernel, iterations=1)

#show image
cv2.imshow('result', result)

#save image
cv2.imwrite('deleteVerticalLines.jpg', result)
cv2.waitKey()

