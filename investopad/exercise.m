%loading dataset
%data = load('X_train.csv');
[data a] = textread("X_train.csv", "%s %d","delimiter",",","endofline","\n","headerlines",1);
%data = csvread("X_train.csv");

a


%X_norm = X;
%mu = mean(X_norm);
%sigma = std(X_norm);

%X_norm = X_norm .- mu;
%X_norm = X_norm ./ sigma;


filename='data.csv';
fid = fopen(filename);
header = fgetl(fid);
fclose(fid);
X = dlmread(filename,',',1,0);

fid = fopen('data.out.csv','w+');
fprintf(fid,'%s,sum\n',header);
for k=1:size(X,1),
	fprintf(fid,"%i,",X(k,:));
	fprintf(fid,"%i\n",sum(X(k,:)));
end;
fclose(fid);
