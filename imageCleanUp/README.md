# Forest Service Image Recognition

This project consists in cleaning the Site Analysis Summaries images up in order
to perform text recognition on them. 

### Process

Steps 1 through 3 are achieved by running 'changeBackground.py'

1. This is the original pdf image: 
<img src="images/forestService.jpg" alt="alt text" width="350" height="450">

2. pdf to gray scale version: 
<img src="images/Original.jpg" alt="alt text" width="350" height="450">

3. binary threshold version:
<img src="images/binaryThresh.jpg" alt="alt text" width="350" height="450">

Steps 4 through 6 are achieved by running 'deleteVertical.py' and 'deleteHorizontal.py'

4. delete vertical lines from the binary version
<img src="images/deleteVerticalLines.jpg" alt="alt text" width="350" height="450">

5. delete horizontal lines from the binary version 

<img src="images/deleteHorizontalLines.jpg" alt="alt text" width="350" height="450">

6. merge step 4 and step 5
<img src="images/noLines.jpg" alt="alt text" width="350" height="450">
