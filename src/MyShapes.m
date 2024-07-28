% Display options and prompt user for input
fprintf('Shape 1. Circle\n');
fprintf('Shape 2. Rectangle\n');
fprintf('Shape 3. Triangle\n');
fprintf('Shape 4. EquilateralTriangle\n');
shapeNum = input("Select Shape From List Of Options " + ...
    "By Entering Corresponding Number: ");

% Switch Case selects shape based on user input
switch shapeNum
    case 1
        thisRadius = input("Enter radius of circle: ");
        thisColor = input("Enter color of circle: ", "s");
        circle = Circle(thisRadius, thisColor);
        circle = CalculateArea(circle);
        Draw(circle);
    case 2
        thisLength = input("Enter length of rectangle: ");
        thisWidth = input("Enter width of rectangle: ");
        thisColor = input("Enter color of rectangle: ", "s");
        rectangle = Rectangle(thisLength, thisWidth, thisColor);
        rectangle = CalculateArea(rectangle);
        Draw(rectangle);
    case 3
        thisBase = input("Enter base of triangle: ");
        thisHeight = input("Enter height of triangle: ");
        thisColor = input("Enter color of triangle: ", "s");
        triangle = Triangle(thisBase, thisHeight, thisColor);
        triangle = CalculateArea(triangle);
        Draw(triangle);
    case 4
        sideLength = input("Enter side length of equilateral triangle: ");
        thisColor = input("Enter color of equilateral triangle: ", "s");
        equalTriangle = EquilateralTriangle(sideLength, thisColor);
        equalTriangle = CalculateArea(equalTriangle);
        Draw(equalTriangle);
    otherwise
        fprintf('Invalid Input: Please Try Again.');
end

