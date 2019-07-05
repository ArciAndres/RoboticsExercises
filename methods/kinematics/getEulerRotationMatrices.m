%Definition of Default Rotation Matrices

function [Rx Ry Rz] = getEulerRotationMatrices()

a = sym('a', [1,3])

%Rotation matrix around the Z axis
Rz = [  cos(a(3)) -sin(a(3))  0; 
        sin(a(3))  cos(a(3))  0;
            0           0       1];

%Rotation matrix around the Y axis
Ry = [  cos(a(2)) 0 sin(a(2))  ; 
            0      1        0     ;   
        -sin(a(2)) 0 cos(a(2))   ;];

%Rotation matrix around the X axis
Rx = [  1   0           0       ;
        0  cos(a(1)) -sin(a(1)); 
        0  sin(a(1))  cos(a(1));];
end