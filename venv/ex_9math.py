from math import pi, cos, tan

gravity = 9.81
initial_velocity = 44
elevation_angle = 80 * (pi/180)
horizontal_distance = 0.5
barrel_height = 1

a = barrel_height
c = gravity * (horizontal_distance ** 2)
d = 2 * (initial_velocity*(cos(elevation_angle) ** 2))
b = horizontal_distance * tan(elevation_angle)


projectile_height = a + b - (c / d)
print(projectile_height)
