%Ettersom vi ikke fikk til å kontrollere robotarmenens ledd i Gazebo, når
%vi brukte joint_state_publisher og prøvde å endre verdier i ROS, fikk vi heller ikke laget noen
%video av robotarmen sin bane.. Likevel har vi laget et matlab-script som
%vi tror ville utført baneplanleggingen i gazebo fra matlab via ROS. Script-innholdet ses nedenfor. 

L1 = 0.1; L2 = 0.5; L3 = 0.5; L4 = 0.25; L5= 0.1; alfa1 = pi/2; alfa4=pi/2; alfa5=0;
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
Traj2 = jtraj(q1, q2, 15)
Traj3 = jtraj(q2, q3, 15)
Traj4 = jtraj(q3, q4, 15)
Traj5 = jtraj(q4, q5, 15)
Traj6 = jtraj(q5, q6, 20)
Traj7 = jtraj(q6, q7, 25)
Traj8 = jtraj(q7, q8, 25)
Traj9 = jtraj(q8, q9, 25)
Traj10 = jtraj(q9, q10, 25)
Traj11 = jtraj(q10, q11, 25)
Traj12 = jtraj(q11, q0, 20)



rosinit




[pub_q1,msg_q1] = rospublisher('/mobile_manipulator/Link1/command','std_msgs/Float64');
[pub_q2,msg_q2] = rospublisher('/mobile_manipulator/Link2/command','std_msgs/Float64');
[pub_q3,msg_q3] = rospublisher('/mobile_manipulator/Link3/command','std_msgs/Float64');
[pub_q4,msg_q4] = rospublisher('/mobile_manipulator/Link4/command','std_msgs/Float64');
[pub_q5,msg_q5] = rospublisher('/mobile_manipulator/Link5/command','std_msgs/Float64');


rate = robotics.Rate(10);

for i=1: length(Traj1)

        msg_q1.Data = Traj1(i,1);
        msg_q2.Data = Traj1(i,2);
        msg_q3.Data = Traj1(i,3);
        msg_q4.Data = Traj1(i,4);
        msg_q5.Data = Traj1(i,5);
        
        

        % Publish
        send(pub_q1,msg_q1);
        send(pub_q2,msg_q2);
        send(pub_q3,msg_q3);
        send(pub_q4,msg_q4); 
        send(pub_q5,msg_q5); 

        waitfor(rate);
end 

for i=1: length(Traj2)

        msg_q1.Data = Traj2(i,1);
        msg_q2.Data = Traj2(i,2);
        msg_q3.Data = Traj2(i,3);
        msg_q4.Data = Traj2(i,4);
        msg_q5.Data = Traj2(i,5);
        
        

        % Publish
        send(pub_q1,msg_q1);
        send(pub_q2,msg_q2);
        send(pub_q3,msg_q3);
        send(pub_q4,msg_q4); 
        send(pub_q5,msg_q5); 

        waitfor(rate);
end 
for i=1: length(Traj3)

        msg_q1.Data = Traj3(i,1);
        msg_q2.Data = Traj3(i,2);
        msg_q3.Data = Traj3(i,3);
        msg_q4.Data = Traj3(i,4);
        msg_q5.Data = Traj3(i,5);
        
        

        % Publish
        send(pub_q1,msg_q1);
        send(pub_q2,msg_q2);
        send(pub_q3,msg_q3);
        send(pub_q4,msg_q4); 
        send(pub_q5,msg_q5); 

        waitfor(rate);
end 
for i=1: length(Traj4)

        msg_q1.Data = Traj4(i,1);
        msg_q2.Data = Traj4(i,2);
        msg_q3.Data = Traj4(i,3);
        msg_q4.Data = Traj4(i,4);
        msg_q5.Data = Traj4(i,5);
        
        

        % Publish
        send(pub_q1,msg_q1);
        send(pub_q2,msg_q2);
        send(pub_q3,msg_q3);
        send(pub_q4,msg_q4); 
        send(pub_q5,msg_q5); 

        waitfor(rate);
end 
for i=1: length(Traj5)

        msg_q1.Data = Traj5(i,1);
        msg_q2.Data = Traj5(i,2);
        msg_q3.Data = Traj5(i,3);
        msg_q4.Data = Traj5(i,4);
        msg_q5.Data = Traj5(i,5);
        
        

        % Publish
        send(pub_q1,msg_q1);
        send(pub_q2,msg_q2);
        send(pub_q3,msg_q3);
        send(pub_q4,msg_q4); 
        send(pub_q5,msg_q5); 

        waitfor(rate);
end 
for i=1: length(Traj6)

        msg_q1.Data = Traj6(i,1);
        msg_q2.Data = Traj6(i,2);
        msg_q3.Data = Traj6(i,3);
        msg_q4.Data = Traj6(i,4);
        msg_q5.Data = Traj6(i,5);
        
        

        % Publish
        send(pub_q1,msg_q1);
        send(pub_q2,msg_q2);
        send(pub_q3,msg_q3);
        send(pub_q4,msg_q4); 
        send(pub_q5,msg_q5); 

        waitfor(rate);
end 
for i=1: length(Traj7)

        msg_q1.Data = Traj7(i,1);
        msg_q2.Data = Traj7(i,2);
        msg_q3.Data = Traj7(i,3);
        msg_q4.Data = Traj7(i,4);
        msg_q5.Data = Traj7(i,5);
        
        

        % Publish
        send(pub_q1,msg_q1);
        send(pub_q2,msg_q2);
        send(pub_q3,msg_q3);
        send(pub_q4,msg_q4); 
        send(pub_q5,msg_q5); 

        waitfor(rate);
end 

for i=1: length(Traj8)

        msg_q1.Data = Traj8(i,1);
        msg_q2.Data = Traj8(i,2);
        msg_q3.Data = Traj8(i,3);
        msg_q4.Data = Traj8(i,4);
        msg_q5.Data = Traj8(i,5);
        
        

        % Publish
        send(pub_q1,msg_q1);
        send(pub_q2,msg_q2);
        send(pub_q3,msg_q3);
        send(pub_q4,msg_q4); 
        send(pub_q5,msg_q5); 

        waitfor(rate);
end 
for i=1: length(Traj9)

        msg_q1.Data = Traj9(i,1);
        msg_q2.Data = Traj9(i,2);
        msg_q3.Data = Traj9(i,3);
        msg_q4.Data = Traj9(i,4);
        msg_q5.Data = Traj9(i,5);
        
        

        % Publish
        send(pub_q1,msg_q1);
        send(pub_q2,msg_q2);
        send(pub_q3,msg_q3);
        send(pub_q4,msg_q4); 
        send(pub_q5,msg_q5); 

        waitfor(rate);
end 
for i=1: length(Traj10)

        msg_q1.Data = Traj10(i,1);
        msg_q2.Data = Traj10(i,2);
        msg_q3.Data = Traj10(i,3);
        msg_q4.Data = Traj10(i,4);
        msg_q5.Data = Traj10(i,5);
        
        

        % Publish
        send(pub_q1,msg_q1);
        send(pub_q2,msg_q2);
        send(pub_q3,msg_q3);
        send(pub_q4,msg_q4); 
        send(pub_q5,msg_q5); 

        waitfor(rate);
end 
for i=1: length(Traj11)

        msg_q1.Data = Traj11(i,1);
        msg_q2.Data = Traj11(i,2);
        msg_q3.Data = Traj11(i,3);
        msg_q4.Data = Traj11(i,4);
        msg_q5.Data = Traj11(i,5);
        
        

        % Publish
        send(pub_q1,msg_q1);
        send(pub_q2,msg_q2);
        send(pub_q3,msg_q3);
        send(pub_q4,msg_q4); 
        send(pub_q5,msg_q5); 

        waitfor(rate);
end 
for i=1: length(Traj12)

        msg_q1.Data = Traj12(i,1);
        msg_q2.Data = Traj12(i,2);
        msg_q3.Data = Traj12(i,3);
        msg_q4.Data = Traj12(i,4);
        msg_q5.Data = Traj12(i,5);
        
        

        % Publish
        send(pub_q1,msg_q1);
        send(pub_q2,msg_q2);
        send(pub_q3,msg_q3);
        send(pub_q4,msg_q4); 
        send(pub_q5,msg_q5); 

        waitfor(rate);
end 


rosshutdown

