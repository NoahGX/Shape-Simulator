% Class 'EquilateralTriangle' defines dimensions of equilateral shape
classdef EquilateralTriangle < Triangle & ColorMixin
    % Properties define Object Data
    properties
        sideLength
    end
    % Methods define Operations on Class Objects
    methods
        % Constructor creates and initializes Class Object
        function obj = EquilateralTriangle(sideLength, shapeColor)
            newShapeHeight = (sideLength / 2) * (sqrt(3));
            obj@ColorMixin(shapeColor);
            obj = obj@Triangle(sideLength, newShapeHeight, shapeColor);
            obj.sideLength = sideLength;
        end
        % Function to display method results
        function Display(obj)
            fprintf(['The area of a %s Equilateral Triangle with a ' ...
                'side length of %.2f units is ' ...
                'approximately %.2f square units.\n'], ...
                obj.Color, obj.sideLength, obj.area);
            fprintf('\n');
        end
    end
end

