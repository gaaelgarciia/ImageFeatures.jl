"""
```
sift_params = SIFT([sigma = 1.6], [octaves = 3],  [lower_bound = 0.003], [eigenvalue_ratio = 10.0], [descriptors=(4,16)], [gradient_threshold = 0.2], [distance_ratio = 0.8])
```

Scale Invariant Feature Transform (SIFT) is a dense feature descriptor usually used for object detection. See "Histograms of Oriented Gradients for Human Detection" by Dalal and Triggs.

Parameters:
-    sigma          	= sigma of the gaussian to be applied 
-    octaves        	= pyramid size
-    lower_bound    	= minimum gradient magnitude of a keypoint 
-    eigenvalue_ratio   = ratio of the largest and smallest eigenvalue of the Hessian Matrix
-    descriptors    	= tuple of number of descriptors x number of samples 
-    distance_ratio     = ratio closest and second-to-closest neighbour
"""
mutable struct SIFT <: Params
    sigma::Float
    octaves::Int
    lower_bound::Float
    eigenvalue_ratio::Int
    descriptors::Tuple{Int,Int}
    gradient_threshold::Float
    distance_ratio::Float
end

function SIFT(; sigma::Float = 1.6, octaves::Int = 3,  lower_bound::Float = 0.003, eigenvalue_ratio::Int = 10.0, descriptors::Tuple{Int,Int}=(4,16), gradient_threshold::Float = 0.2, distance_ratio::Float = 0.8)
    SIFT(sigma, octaves, lower_bound, eigenvalue_ratio, descriptors, gradient_threshold, distance_ratio)
end

function create_descriptor(img::AbstractArray{T, 2}, params::SIFT) where T<:Gray
	
end
