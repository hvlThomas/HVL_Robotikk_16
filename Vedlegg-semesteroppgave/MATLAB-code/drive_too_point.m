%start og slutt pungt
x0 = [-5 -9 0];
xg = [0 0];
%gain
gainK_vel = 0.45;
GainK_ang = 2.1;

% start Sl fill
sl_drivepoint_uni

% kjører simulink fil
r = sim('sl_drivepoint_uni');
% skriver ut kordinaten, [x y alpha]
y = r.find('y')