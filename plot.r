x <- c(1,2,3,4,5,6,7,8,9,10,11)
y <- c(7642, 14650, 21658, 28666, 35674, 42682, 49690, 56698, 63706, 70714, 77722)
z <- c(41472, 76800,  112128,  147456,  182784,  218112,  253440,  288768,  324096,  359424, 394752)
a <- c(14272, 8816, 6512, 5072, 4208, 3568, 3120, 2736, 2464, 2224, 2049)
plot(x,a)
plot(x,y,xlab ="Anzahl an Blöcken", ylab ="Anzahl an Parametern",main ="Zusammenhang Blockanzahl und Parameteranzahl für ein Stage")
plot(x,z)