%Definition of Default Rotation Matrices

function [Rx Ry Rz] = getEulerRotationMatrices()

alpha = sym('alpha');
beta = sym('beta');
gamma = sym('gamma');

%Rotation matrix around the Z axis
Rz = [  cos(gamma) -sin(gamma)  0; 
        sin(gamma)  cos(gamma)  0;
            0           0       1];

%Rotation matrix around the Y axis
Ry = [  cos(alpha) 0 sin(alpha)  ; 
            0      1        0     ;   
        -sin(alpha) 0 cos(alpha)   ;];

%Rotation matrix around the X axis
Rx = [  1   0           0       ;
        0  cos(beta) -sin(beta); 
        0  sin(beta)  cos(beta);];
end