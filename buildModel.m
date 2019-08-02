% Building the LSTM model 

numClasses = 4;
numHiddenUnits = 0;
inputSize = 0;

layers = [...
    sequenceInputLayer(inputSize)
    bilstmLayer(numHiddenUnits,'OutputMode','last')
    fullyConnectedLayer(numClasses)
    softmaxLayer
    classificationLayer];
