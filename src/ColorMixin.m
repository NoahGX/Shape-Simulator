% Class 'ColorMixin' defines color of shape
classdef ColorMixin
    % Properties define Object Data
    properties
        Color
    end
    % Methods define Operations on Class Objects
    methods
        % Constructor creates and initializes Class Object
        function obj = ColorMixin(shapeColor)
            obj.Color = shapeColor;
        end
        % Function to set color of Class Object
        function obj = setColor(obj, newColor)
            obj.Color = newColor;
        end
        % Function to get color of Class Object
        function color = getColor(obj)
            color = obj.Color;
        end
    end
end

