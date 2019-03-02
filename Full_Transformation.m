function [ M ] = Full_Transformation( X, Y, Z, x1, y1, z1, x2, y2, z2, alpha, beta, angle1, angle2)
%UNTITLED18 Summary of this function goes here
%   Detailed explanation goes here
M = zeros(4,25);
a=0;%AngleA(y1, Z, z1); 
b=AngleB(x1, Z, x1, z1);
c=AngleC(x1, Z, x1, z1);
p=0;%AngleA(y2, Z, z2);
q=AngleB(x2, Z, x2, z2);
r=AngleC(x2, Z, x2, z2);
Foot1 = [x1;y1;z1;1];
Foot11 = Foot1 + RotZ(-alpha)*TransX(7);
Knee1 = Foot1 + RotZ(-alpha)*RotX(a)*RotY(b)*TransZ(15);
Hip1 = Foot1 + TransZ(Z-Foot1(3));
Pelvis1 = Hip1 + RotY(angle1)*TransZ(1);
Com = [X;Y;Z;1];
MidPelvis = Com + RotY(angle1)*TransZ(1);
Foot2 = [x2;y2;z2;1];
Foot22 = Foot2 + RotZ(-beta)*TransX(7);
Knee2 = Foot2 + RotZ(-beta)*RotX(p)*RotY(q)*TransZ(15);
Hip2 = Foot2 + TransZ(Z-Foot2(3));
Pelvis2 = Hip2 + RotY(angle1)*TransZ(1);
Neck = Com + RotY(angle1)*TransZ(21);
Head = Neck + RotY(angle1)*TransZ(5);
Shoulder1 = Neck + RotY(angle1)*RotZ(-beta)*TransY(-5);
Shoulder2 = Neck + RotY(angle1)*RotZ(-beta)*TransY(5);
Hand1 = Neck +  RotY(angle1)*RotZ(-beta)*TranslateY(-5)*RotY(-angle2)*TransZ(-10);
Hand2 = Neck +  RotY(angle1)*RotZ(-beta)*TranslateY(5)*RotY(-angle2)*TransZ(-10);

M(:,1) = Head;
M(:,2) = Neck;
M(:,3) = Shoulder1;
M(:,4) = Hand1;
M(:,5) = Shoulder1;
M(:,6) = Shoulder2;
M(:,7) = Hand2;
M(:,8) = Shoulder2;
M(:,9) = Neck;
M(:,10)= MidPelvis;
M(:,11)= Pelvis1;
M(:,12)= Hip1;
M(:,13)= Knee1;
M(:,14)= Foot1;
M(:,15)= Foot11;
M(:,16)= Foot1;
M(:,17)= Knee1;
M(:,18)= Hip1;
M(:,19)= Pelvis1;
M(:,20)= MidPelvis;
M(:,21)= Com;
M(:,22)= MidPelvis;
M(:,23)= Pelvis2;
M(:,24)= Hip2;
M(:,25)= Knee2;
M(:,26)= Foot2;
M(:,27)= Foot22;
end

