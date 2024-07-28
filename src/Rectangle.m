% Class 'Rectangle' defines dimensions of rectangular shape
classdef Rectangle < Shape & ColorMixin
    % Properties define Object Data
    properties
        length
        width
    end
    % Methods define Operations on Class Objects
    methods
        % Constructor creates and initializes Class Object
        function obj = Rectangle(shapeLength, shapeWidth, shapeColor)
            obj@Shape("Rectangle");
            obj@ColorMixin(shapeColor);
            obj.length = shapeLength;
            obj.width = shapeWidth;
        end
        % Function to calculate area of Class Object
        function obj = CalculateArea(obj)
            obj.area = obj.width * obj.length;
        end
        % Function to graphically visualize Class Object
        function Draw(obj)
            l = obj.length;
            w = obj.width;
            rectangle('Position',[0, 0, l, w], 'FaceColor', obj.Color);
            axis equal
            t = title(sprintf(['%s Rectangle\n' ...
                'Length: %.2f units, Width: %.2f units, ' ...
                'Area: %.2f sq. units'], ...
                obj.Color, obj.length, obj.width, obj.area));
            t.FontSize = 7;
        end
        % Function to display method results
        function Display(obj)
            fprintf(['The area of a %s %s with a length of ' ...
                '%.2f units and a width of %.2f units ' ...
                'is approximately %.2f square units.\n'], ...
                obj.Color, obj.name, obj.length, obj.width, obj.area);
            fprintf('\n');
        end
    end
end

