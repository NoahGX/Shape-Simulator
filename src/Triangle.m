% Class 'Triangle' defines dimensions of triangular shape
classdef Triangle < Shape & ColorMixin
    % Properties define Object Data
    properties
        base
        height
    end
    % Methods define Operations on Class Objects
    methods
        % Constructor creates and initializes Class Object
        function obj = Triangle(shapeBase, shapeHeight, shapeColor)
            obj@Shape("Triangle");
            obj@ColorMixin(shapeColor);
            obj.base = shapeBase;
            obj.height = shapeHeight;
        end
        % Function to calculate area of Class Object
        function obj = CalculateArea(obj)
            obj.area = (obj.height * obj.base) / 2;
        end
        % Function to graphically visualize Class Object
        function Draw(obj)
            x = [0, obj.base, (obj.base / 2)];
            y = [0, 0, obj.height];
            fill(x, y, obj.Color);
            axis equal
            t = title(sprintf(['%s Triangle\n' ...
                'Base: %.2f units, Height: %.2f units, ' ...
                'Area: %.2f sq. units'], ...
                obj.Color, obj.base, obj.height, obj.area));
            t.FontSize = 6;
        end
        % Function to display method results
        function Display(obj)
            fprintf(['The area of a %s %s with a base of ' ...
                '%.2f units and a height of %.2f units is ' ...
                'approximately %.2f square units.\n'], ...
                obj.Color, obj.name, obj.base, obj.height, obj.area);
            fprintf('\n');
        end
    end
end

