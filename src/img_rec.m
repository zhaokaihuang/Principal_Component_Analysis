clear all
load digit
% convert train data set
  % M=1, N=300

[M,N] = size(train);
for i=1:N
    img = train{i};
    data(i,:) = reshape(img,1,size(img,1)*size(img,2));  % training data set
end
data = data.';
[PC,V] = pca2(data);
lamda = sum(V);
tmp = 0;
for j = 1:size(V)
    tmp = tmp + V(j)/lamda;
    POV(j) = tmp;
    if(POV(j)>0.9)
        numM = j;
        break;
    end
end
% vector U->PC
PC = PC(:,1:numM);
% reshape test data set
[M1, N1] = size(test);
%k=10
for k=1:N1
    img1 = test{k};
    testData(k,:) = reshape(img1,1,size(img1,1)*size(img1,2));  % testing data set
end
testData = testData.';
mn = mean(testData,2);
%centralised
% Low-demensional representation
Z = PC.'*(testData - repmat(mn,1,N1)); % centralised
% Reconstruction testing data set
recTestData = repmat(mn,1,N1) + PC*Z;
reconTest = {};
for r=1:size(recTestData,2)
    reconTest{r} = reshape(recTestData(:,r),28,28);
end 
display_digit(reconTest{1});
testErr = 0;
for i = 1:10
    testErr = testErr + ((testData(:,i)-recTestData(:,i)).')*(testData(:,i)-recTestData(:,i));
end
testErr = testErr/10;









