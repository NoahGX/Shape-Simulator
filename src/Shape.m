% Class 'Shape' defines name and area of shape
classdef Shape < matlab.mixin.Heterogeneous
    % Properties define Object Data
    properties
        name
        area
    end
    % Methods define Operations on Class Objects
    methods
        % Constructor creates and initializes Class Object
        function obj = Shape(shapeName)
            obj.name = shapeName;
            obj.area = [];
        end
         % Display method results
        function Display(obj)
            fprintf('Name of Shape: %s\n', obj.name);
            X = ['Area of Shape: ', mat2str(obj.area)];
            disp(X);
            fprintf('\n');
        end
    end
    % Static Methods can be called without Objects
    methods (Static)
        function obj = CalculateStatistics(shapesArray)
            obj = arrayfun(@(x) x.area, shapesArray);
            meanOfAreas = mean(obj);
            medianOfAreas = median(obj);
            stdDevOfAreas = std(obj);
            fprintf('Mean of Areas: %.2f\n', meanOfAreas);
            fprintf('Median of Areas: %.2f\n', medianOfAreas);
            fprintf('Standard Deviation of Areas %.2f\n', stdDevOfAreas);
            fprintf('\n');
        end
    end
end

