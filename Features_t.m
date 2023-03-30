function features_t=Features_t(temp_data)% xä¸?23*512çŸ©é˜µ
features_t=zeros(size(temp_data,1),10);
for k=1:size(temp_data,1)
    features_t(k,1)=max(temp_data(k,:));
    features_t(k,2)=min(temp_data(k,:));
    features_t(k,3)=median(temp_data(k,:));
    features_t(k,4)=mean(temp_data(k,:));
    features_t(k,5)=std(temp_data(k,:));
    features_t(k,6)=var(temp_data(k,:));
%     features_t(k,7)=sqrt(mean(temp_data(k,:).^2));
    features_t(k,7)=sqrt(sum(temp_data(k,:).^2));% ¾ù·½¸ù
    features_t(k,8)=mean(abs(temp_data(k,:)-mean(temp_data(k,:))));
    features_t(k,9)=skewness(temp_data(k,:));
    features_t(k,10)=kurtosis(temp_data(k,:));
end
end
