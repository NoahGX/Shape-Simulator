% Class 'Circle' defines dimensions of circular shape
classdef Circle < Shape & ColorMixin
    % Properties define Object Data
    properties
        radius
    end
    % Methods define Operations on Class Objects
    methods
        % Constructor creates and initializes Class Object
        function obj = Circle(shapeRadius, shapeColor)
            obj@Shape("Circle");
            obj@ColorMixin(shapeColor)
            obj.radius = shapeRadius;
        end
        % Function to calculate area of Class Object
        function obj = CalculateArea(obj)
            obj.area = pi * obj.radius^2;
        end
        % Function to graphically visualize Class Object
        function Draw(obj)
            d = obj.radius * 2;
            rectangle('Position',[-obj.radius, -obj.radius, d, d], ...
                'Curvature', [1, 1], 'FaceColor', obj.Color);
            axis equal
            t = title(sprintf(['%s Circle\n' ...
                'Radius: %.2f units, Area: %.2f sq. units'], ...
                obj.Color, obj.radius, obj.area));
            t.FontSize = 7;
        end
        % Function to display method results
        function Display(obj)
            fprintf(['The area of a %s %s with a radius of %.2f ' ...
                'units is approximately %.2f square units.\n'], ...
                obj.Color, obj.name, obj.radius, obj.area);
            fprintf('\n');
        end
    end
end

