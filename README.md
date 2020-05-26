<h1> Performing Edge Detection using Robert, Prewitt, Canny and Sobel Filters and Matching </h1>

Referenced - My Paper: https://www.researchgate.net/publication/300080134_A_Double_Filtered_GIST_Descriptor_for_Face_Recognition

<h1> Edge Detection </h1>
Edge Detection is an image processing technique popularly used for data extraction and segmentation which helps find boundaries of objects within images by detecting discontinuities in brightness. 
While these are likely to correspond to discontinuities across depths, surface orientations, or reflect on changes in material properties and variations in scene illuminations, these techniques are hampered by fragmentations, missing segments thus making fundamental tasks non-trivial.

<h1> Robert cross operator </h1>
It's a differential operator that approximates the gradient of images through discrete differentiation via squares of differences between diagonally adjacent pixels.

Consider the following equations:

y = x**0.5 where x refers to the initial intensity value of the image. 

z = (((y(i,j) - y(i+1, j+1))**2 + (y(i+1,j) - y(i,j+1))**2)**0.5

where z is the computed derivative at locations in a 2D image defined by i,j. 
While processing across diagonals simplifies kernel complexity, the method is still sensitive to noise. 

<h1> Prewitt Filter </h1>
Prewitt filter is a discrete differentiation operator computing the approximation of gradient of image intensity function which is to say that at each point, we either get the gradient vector or norm of gradient vector by convolving small kernels in horizontal, vectical directions.
Since the gradient moves from lighter regions to darker ones at the rate of change in that direction, these signify how the image changes at that point by:
G = ((Gx)**2 + (Gy)**2)**0.5

and hence how likely it is to be an edge and also how the edge is likely to be oriented by:
theta = atan(Gy, Gx)
where Gy, Gx are two images at which point contain vectical and horizontal approximations respectively. For detailed descriptions of Gx, Gy see respective folder.

<h1> Sobel Fieldman operator </h1>
While functioning similar to the prewitt filter, magnitude is given by:
G = ((Gx)**2 + (Gy)**2)**0.5
and direction by:
theta = atan(Gy/Gx).
For detailed descriptions of Gx, Gy see respective folder.

<h1> Canny edge detection method </h1>
This technique is useful to extract useful structural information from different vision objects and dramatically reduce amount of data to be processed. 

1. While the filter uses calculus for the edge detection process, it can be approximted via guassian. Apply the guassian filter here to smooth the image in order to remove the noise.

2. find intensity gradients of the image. 

3. apply non-maximum supression to rid false positives. 

4. Apply double thresholds to determine potential edges

5. Suppress other edges that're weak and not connected to strong edges. 

<h1> Matching </h1>
<h2> Building mex files </h2>
These are required in order to interface matlab files with C/C++ files. In our case, we need the same for data pipelining. 
Note that the mex subroutine behaves very similar to the matlab script itself but contains only one function.These files must be contained on the same matlab path or can be passed to make.
If you're incurring errors in this process, the VLFEAT library with matlab support and troubleshooting might be able to help. 
Consider:
https://www.vlfeat.org/compiling-unix.html
https://www.mathworks.com/help/matlab/matlab_external/before-you-run-a-mex-file.html
Finally, establish database connectivity, import data, select features across sets for comparison and then close the established connection. 
The process of matching can happen via SIFT which detects key points in images and maps other similar ones while working with a similarity score that is defined based on number of similar points.
