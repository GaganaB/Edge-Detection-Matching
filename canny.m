function canny_edges(max_hysteresis_thresh, min_hysteresis_thresh,sigma);
 
 
%%INIT VARIABLES:
 
%%Derivatives in x and y
derivative_x=zeros(H,W);              
derivative_y=zeros(H,W);    
 
 
%%Gaussian kernel

Y_GAUSSIAN=zeros(size_of_kernel,size_of_kernel);
X_GAUSSIAN=zeros(size_of_kernel,size_of_kernel);
 
%%Create gaussian kernels for both x and y directions based on the sigma
%%that was given.
 
%%Image Derivatives:
        reference_row=  r-ceil(size_of_kernel/2); 
        reference_colum=  c-ceil(size_of_kernel/2); 
        %find the derivative by adding refernce of original image
        %mutliplied by the guassian 
       
 
%%Compute the gradient magnitufde based on derivatives in x and y:
   
        GRADIENT(r,c) = sqrt (derivative_x(r,c)^2 + derivative_y(r,c)^2 );
    
%save the image for comparison 
 
imwrite(ORIGINAL_IMAGE,'C:\Documents and Settings\User\Desktop\Results\original_image.bmp');                         
imwrite(derivative_x,'C:\Documents and Settings\User\Desktop\Results\derivative_x.bmp');            
imwrite(derivative_y,'C:\Documents and Settings\User\Desktop\Results\derivative_y.bmp');            
imwrite(GRADIENT,'C:\Documents and Settings\User\Desktop\Results\gradient.bmp');       
imwrite(non_max,'C:\Documents and Settings\User\Desktop\Results\non_max_supr.bmp');      
imwrite(post_hysteresis,'canny.bmp'); 