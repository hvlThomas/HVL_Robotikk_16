robot = Bicycle('steermax', 0.5);
rrtnav = RRT(robot, rrtmap, 'npoints', 2500, 'root', [10 10 0], 'simtime', 4);
rrtnav.plan();
path = rrtnav.query([10 10 0], [120 60 0]);
rrtnav.plot(path);