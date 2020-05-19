% please change the file name and threshold before using it
% threshold controls the boundary bewteen real signature and background
file='signature.jpeg';
threshold=150;

x=imread(file);

x(1:45,:,:)=255;
x(size(x,1)-50:size(x,1),:,:)=255;
x(:,1:165,:)=255;
x(:,size(x,2)-200:size(x,2),:)=255;

tmp=zeros(size(x,1),size(x,2));
for i=1:size(x,1)
    for j=1:size(x,2)
        tmp(i,j)=sum(x(i,j));
        if(tmp(i,j)>threshold)
            x(i,j,:)=255;
        end
    end
end


imshow(x)