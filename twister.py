import pygame
import math

(width, height) = (800,600)

screen = pygame.display.set_mode((width, height))

q = 75
running = 1

while running:
    event = pygame.event.poll()
    if event.type == pygame.QUIT:
        running = 0
        
    for a in range (0,600):             # ADD FOR EXTRA TWIST :^)
        x = math.sin(a/q)*200+400       # *math.sin(a/200) 
        y = math.sin(a/q+90)*200+400    # *math.sin(a/200)
        z = math.sin(a/q+180)*200+400   # *math.sin(a/200)
        print(a,x,y,z)

        if x<y:
            pygame.draw.line(screen, (0, 0, 255), (x, a), (y, a))

        if y<z:
            pygame.draw.line(screen, (0, 255, 0), (y, a), (z, a))

        if z<x:
            pygame.draw.line(screen, (255, 0, 0), (z, a), (x, a))
    
        pygame.display.flip()
