%Testscript for peter corke toolbox RRT
%Lager et kart med hindringsobjekt
%Siden det skapes et 3-dimensjonalt navigasjonsobjekt, vil hindringene
%bare ignoreres, da navigasjonstreet bare går over & under, som vist i
%plottet
robot = Bicycle('steermax', 0.5);
rrtnav = RRT(robot, rrtmap, 'npoints', 2500, 'root', [10 10 0], 'simtime', 4);
rrtnav.plan();
path = rrtnav.query([10 10 0], [120 60 0]);
rrtnav.plot(path);