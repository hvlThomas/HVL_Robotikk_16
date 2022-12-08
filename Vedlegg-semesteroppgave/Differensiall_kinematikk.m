clear all
clc
L1 = 0.1;
L2 = 0.5;
L3 = 0.5;
L4 = 0.25;
L5= 0.1;
alpha1 = pi/2;
alpha5=0;

L(1) = Link('d', L1,'a',0,'alpha',alpha1);
L(2) = Link('d', 0,'a',L2,'alpha',0);
L(3) = Link('d', 0,'a',L3,'alpha',0);
L(4) = Link('d', 0,'a',L4,'alpha',0);
L(5)=Link('d',0,'a',L5,'alpha',alpha5);
Robot_arm = SerialLink(L, 'name', 'Robot-arm');
Robot_arm.qlim=[[-pi pi]; [-pi pi]; [-pi pi]; [-pi pi];[-pi pi]];

Robot_arm.teach('callback', @(r,q) r.vellipse(q))