function [features, lblData] = extractFeaturesUsingAlexnet(imdsData)
    net = alexnet();
	featureLayer = 'fc7';
	features = activations(net, imdsData, featureLayer, 'MiniBatchSize', 32, 'OutputAs', 'columns');
	lblData = imdsData.Labels;
end

