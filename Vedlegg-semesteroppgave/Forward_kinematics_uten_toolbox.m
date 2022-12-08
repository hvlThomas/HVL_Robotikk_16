clear all
clc
% Bruker theta=0 på alle transformasjonsmatrisene
L1 = 0.1;
L2 = 0.5;
L3 = 0.5;
L4 = 0.25;
L5=0.1;

alpha1 = pi/2;
alpha5 = 0;


L(1) = Link('d', L1,'a',0,'alpha',alpha1);
L(2) = Link('d', 0,'a',L2,'alpha',0);
L(3) = Link('d', 0,'a',L3,'alpha',0);
L(4) = Link('d', 0,'a',L4,'alpha',0);
L(5) = Link('d',0,'a',L5,'alpha',alpha5);

%Basejoint til joint1
T_01=[cos(0) -sin(0)*cos(L(1).alpha) sin(0)*sin(L(1).alpha) L(1).a*cos(0);
                 sin(0) cos(0)*cos(L(1).alpha) -cos(0)*sin(L(1).alpha) L(1).a*sin(0);
                 0 sin(L(1).alpha) cos(L(1).alpha) L(1).d;
                 0 0 0 1]
%Joint1 til joint2
T_12=[cos(0) -sin(0)*cos(L(2).alpha) sin(0)*sin(L(2).alpha) L(2).a*cos(0);
                 sin(0) cos(0)*cos(L(2).alpha) -cos(0)*sin(L(2).alpha) L(2).a*sin(0);
                 0 sin(L(2).alpha) cos(L(2).alpha) L(2).d;
                 0 0 0 1]

%Joint2 til joint3
T_23=[cos(0) -sin(0)*cos(L(3).alpha) sin(0)*sin(L(3).alpha) L(3).a*cos(0);
                 sin(0) cos(0)*cos(L(3).alpha) -cos(0)*sin(L(3).alpha) L(3).a*sin(0);
                 0 sin(L(3).alpha) cos(L(3).alpha) L(3).d;
                 0 0 0 1]

%Joint3 til joint4
T_34=[cos(0) -sin(0)*cos(L(4).alpha) sin(0)*sin(L(4).alpha) L(4).a*cos(0);
                 sin(0) cos(0)*cos(L(4).alpha) -cos(0)*sin(L(4).alpha) L(4).a*sin(0);
                 0 sin(L(4).alpha) cos(L(4).alpha) L(4).d;
                 0 0 0 1]

%Joint4 til end-effector
T_4E=[cos(0) -sin(0)*cos(L(5).alpha) sin(0)*sin(L(5).alpha) L(5).a*cos(0);
                 sin(0) cos(0)*cos(L(5).alpha) -cos(0)*sin(L(5).alpha) L(5).a*sin(0);
                 0 sin(L(5).alpha) cos(L(5).alpha) L(5).d;
                 0 0 0 1]

%Base til end-effector
T_0E=T_01*T_12*T_23*T_34*T_4E



