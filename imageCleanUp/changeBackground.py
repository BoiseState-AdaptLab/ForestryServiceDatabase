#############################
# @author: Floriana Ciaglia #
# @date: May 15, 2020       #
#############################

import cv2 as cv
from matplotlib import pyplot as plt

#reading the image and setting it to gray scale with
#second parameter 0
original = cv.imread('forestService.jpg',0)

#three different thresholds 
ret,binaryThresh = cv.threshold(original,127,255,cv.THRESH_BINARY)

meanThresh = cv.adaptiveThreshold(original,255,cv.ADAPTIVE_THRESH_MEAN_C, cv.THRESH_BINARY,11,2)

gaussianThresh = cv.adaptiveThreshold(original,255,cv.ADAPTIVE_THRESH_GAUSSIAN_C, cv.THRESH_BINARY,11,2)

#setting titles for the images that will be produced 
titles = ['Original.jpg', 'BinaryThresholding.jpg',
            'MeanThresholding.jpg', 'GaussianThresholding.jpg']

images = [original, binaryThresh, meanThresh, gaussianThresh]

#iterating through the images to show and store the result of the thresholds
for i in range(4):
    plt.subplot(2,2,i+1),plt.imshow(images[i],'gray')
    plt.title(titles[i])
    plt.xticks([]),plt.yticks([])
    cv.imwrite(titles[i], images[i])
plt.show()
