% This script handles the data preprocessing for further analysis

% Reading in the CSV files into matrices
rock_data = readmatrix('Data/0.csv');
scissors_data = readmatrix('Data/1.csv');
paper_data = readmatrix('Data/2.csv');
ok_data = readmatrix('Data/3.csv');

%frames = {rock_data, scissors_data, paper_data, ok_data};
dataset = [rock_data; scissors_data; paper_data; ok_data];

X_train = dataset(:, 1:64);
y_train = dataset(:, 65);

X_train = reshape(X_train, [], 1);
X_train = reshape(X_train, [], 8, 8);
y_train = reshape(y_train, [], 1);

% Splitting into training and testing data
X_test = X_train(7701:end, 1);
y_test = y_train(7701:end, 1);

X_train = X_train(1:7700, 1);
y_train = y_train(1:7700, 1);



