L1 = 0.1;
L2 = 0.5;
L3 = 0.5;
L4 = 0.25;
L5= 0.1;
alfa1 = pi/2;
alfa4=pi/2;
alfa5=0;
L(1) = Link('d', L1,'a',0,'alpha',alfa1)
L(2) = Link('d', 0,'a',L2,'alpha',0)
L(3) = Link('d', 0,'a',L3,'alpha',0)
L(4) = Link('d', 0,'a',L4,'alpha',0)
L(5)=Link('d',0,'a',L5,'alpha',alfa5)
Robot_arm = SerialLink(L, 'name', 'Robot-arm')
Robot_arm.qlim = [[-pi pi]; [-pi pi]; [-pi pi]; [-pi pi];[-pi pi]];


W = [-2 2 -2 2  -1 2]


q0= [0 pi/2 0 0 0];
q1 =[0 pi/4 -pi/4 0 pi/2];
q2 =[pi/8 pi/4 -pi/4 0 pi/2];
q3 =[0 pi/4 -pi/4 0 pi/2];
q4 =[-pi/8 pi/4 -pi/4 0 pi/2];
q5 =[0 pi/4 -pi/4 -0.2 (-pi/2+0.2)];
q6 =[pi/8 (pi/4) (-pi/4) -0.2 (-pi/2+0.2)];
q7 =[pi/8 (pi/4+0.4) (-pi/4-0.4) -0.6 (-pi/2+0.6)];
q8 =[0 (pi/4) (-pi/4) -0.2 (-pi/2+0.2)];
q9 =[0 (pi/4+0.4) (-pi/4-0.4) -0.6 (-pi/2+0.6)];
q10=[-pi/8 (pi/4) -pi/4 -0.2 (-pi/2+0.2)];
q11=[-pi/8 (pi/4+0.4) (-pi/4-0.4) -0.6 (-pi/2+0.6)]



Traj1 = jtraj(q0, q1, 30)

figure()
Robot_arm.plot(Traj1, 'workspace', W)
hold on

Traj2 = jtraj(q1, q2, 15)
Robot_arm.plot(Traj2, 'workspace', W)
hold on
Traj3 = jtraj(q2, q3, 15)
Robot_arm.plot(Traj3, 'workspace', W)
hold on
Traj4 = jtraj(q3, q4, 15)
Robot_arm.plot(Traj4, 'workspace', W)
hold on
Traj5 = jtraj(q4, q5, 15)
Robot_arm.plot(Traj5, 'workspace', W)
hold on
Traj6 = jtraj(q5, q6, 20)
Robot_arm.plot(Traj6, 'workspace', W)
hold on
Traj7 = jtraj(q6, q7, 25)
Robot_arm.plot(Traj7, 'workspace', W)
hold on
Traj8 = jtraj(q7, q8, 25)
Robot_arm.plot(Traj8, 'workspace', W)
hold on
Traj9 = jtraj(q8, q9, 25)
Robot_arm.plot(Traj9, 'workspace', W)
hold on
Traj10 = jtraj(q9, q10, 25)
Robot_arm.plot(Traj10, 'workspace', W)
hold on
Traj11 = jtraj(q10, q11, 25)
Robot_arm.plot(Traj11, 'workspace', W)
hold on
Traj12 = jtraj(q11, q0, 20)
Robot_arm.plot(Traj12, 'workspace', W)
hold on
