%% REU Bootcamp 2018
% two % signs with a space afterwards indicates a new section
% text with a % sign in front is commented out

close all; clear all; clc
% closes all figures, clears variables in workspace, clears command window

%% Programming in Matlab: Variables, matrixes, indexing
amp = []; %I have created an empty variable called "amp". The equals sign assigns
%values or functions to a variable. The semi-colon keeps the piece of code
%from printing in the command window. 
 
%%
amp = 10; %I have now assigned the number 10 to my variable. 
%%
amp = amp + 1  %I have now increased the value of amp by 1. There is no semicolon
%so the result will print in the command window. Matlab will highlight
%lines of code that are not ended with a semicolon.
%%
myarray = [1 2 3 4 5]; myarray2 = 1:5; %A vector or array can be created with brackets
% (myarray) or without (myarray2). I like using brackets. This notation
% creates a row vector. The colon signifies a range of values, incremented
% by 1. 
%%
myarray = [myarray 6:10]; % add numbers 6-10 to end of vector by placing 
% the additional elements where you want them around the original vector.
% You must use brackets
%%
myarray = [6:10 myarray]; % add 6:10 to the beginning of the vector
%%
myarray = myarray'; %The apostrophe rotates the row vector to a column vector. 
%It will also rotate a column vector into a row vector. 
%%
myarray = [myarray;11;12;13;14;15]; %Elements can be added to a column array
%similarly to a row vector except elements must be separated by a
%semicolon.
%%
mymat = zeros(7,6);  %I have created a new variable called "mymat" and assigned
%it a 7X6 matrix of zeros ( 7 rows, 6 columns), using Matlab's built in function "zeros". Type
%"help zeros" in the command window to see the documentation for this
%function. 
%%
mymat(1,1) = 42; %elements of arrays or matrices are called using this form of 
%indexing: the variable name followed by parentheses filled with the index
%number. "mymat(1,1) refers to the element in the first row and first
%column. In matlab, index counting begins with 1, not 0 like other
%languages. I have now assigned the first element in mymat to the value of
%42. 
%%
mymat(:,1) = 42; %you can reference whole rows or columns with the colon symbol.
%In this case, I have assigned the all rows of column 1 to the value of 42.
%%
mymat(1,2:3) = 50; %you can reference subsets of indicies with the colon symbol as well. 
%In this case, the colon should be read as "to". So now the second and
%third element of the first row of mymat are equal to 50. 
%%
mymat(end,end) = 42; %you can reference the last element in a matrix or array 
%with "end". Now the last element of the last column in mymat is equal to 42. 

%% Operators
% Arithmetic
% Make two vectorys x and y
x = [ 1 2 3 4 5];
y = [2 3 4 5 6];
% Arithemtic operations: +,-, *, ^
% If you want to find the product of x multiplied by y for each element use
 z = x.*y;
 % The . indicates that each element in x should be multiplied by each
 % element in y. If you do not put the . you will get an error because * by
 % itself means matrix multiplication. Get in the habit of using . if you
 % want to do element-wise operations
 
 %% Relational (comparison operators)
 % These operators don't change the value of anything, they just return yes
 % (true) or no (false) answers when comparing two values. In Matlab these
 % are:
 % <, >, <=, >=, ==, and ~=. The == is used to distinguish between the
 % assigment operator (=) which sets the lhs equal to the rhs (so it's not
 % comparing, it's changing the value).
  % Example
  a = [1 2 3];
  b = [3 2 1];
  a==b
  
%% Logicals
% combine logical values using AND, OR, NOT, and exclusive OR. These
% operators are:
% ~ (NOT), &(AND), |(OR), xor(value1, value2) (exclusive OR)
% Example
x = normrnd(0, 1, 100 ,1); % puts 100 normally distributed random numbers 
% with mean of 0 and standard deviation of 1 in the 100 x 1 column vector
y = (x<-2) | (x >2) % finds each case where the value is more than 2 
%standard deviations from the mean
sum(y) % gives the number of times the logical operator is true

%% Functions
% functions take inputs (arguments) and produce outputs
% Matlab contains built in functions (for example sum, mean, std) and allows you to 
% write your own functions.
% Example of built in matlab functions to be used for summary statistics

mydata = [12 14 18 13 17];
xbar = mean(mydata);
sigma = std(mydata);
tot = sum(mydata);

% We won't go into how to build your own functions today, but they
% essentially work the same way where within the script you just call the
% function, give it the inputs, and get out the corresponding output. But
% instead of it being built in, you separately save a .m file in the name
% of that function that performs the operations you want on the input to
% generate the output.









