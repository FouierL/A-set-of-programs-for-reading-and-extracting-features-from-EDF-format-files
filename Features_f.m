function P= Features_f( x )
%% 对信号进行小波包分解，得到节点的小波包系数。然后对每个节点系数进行重构。
n=5;
fs=256;
wpt=wpdec(x,n,'db4','shannon');

%% reconstruct wavelet packet coefficients.
rex1=wprcoef(wpt,[5,0]);
rex2=wprcoef(wpt,[5,1]);
rex3=wprcoef(wpt,[4,1]);
rex4=wprcoef(wpt,[3,1]);
rex5_1=wprcoef(wpt,[2,1]);
rex5_2=wprcoef(wpt,[1,1]);

rex=[rex1;rex2;rex3;rex4;rex5_1;rex5_2];

%%
%power
P=[];
len_rex=size(rex,2);
for i=1:4
%     power=mean(abs(rex(i,:)).^2);
    power=norm(abs(rex(i,:)),2)/(len_rex-1);
    P=[P;power];
end
% power5=mean(abs(rex(5,:)).^2)+mean(abs(rex(6,:)).^2);
power5=norm(abs(rex(5,:)),2)/(len_rex-1)+norm(abs(rex(6,:)),2)/(len_rex-1);
P=[P;power5];
end








