filename = 'U54_HFF_plate_subset.txt';
table = readtable(filename);
head(table)
strands=table(:,4:5);
% strand2=table{5};
G=findgroups(strands);
len=length(G)
% k=splitapply(table,k)
for i=1:len
    if G(i)=='1' 
        A_=table(i,:);
        A=vertcat(A,A_);
    end
    if G(i)=='2' 
        B_=table(i,:);
        B=vertcat(B,B_);
    end
    if G(i)=='3' 
        C_=table(i,:);
        C=vertcat(C,C_);
    end
    if G(i)=='4' 
        D_=table(i,:);
        D=vertcat(D,D_); 
    end
end