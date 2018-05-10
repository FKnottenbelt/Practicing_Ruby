# ball_upwards.rb 6 kyu

=begin
You throw a ball vertically upwards with an initial speed v (in km per hour).
The height h of the ball at each time t is given by h = v*t - 0.5*g*t*t where
g is Earth's gravity (g ~ 9.81 m/s**2). A device is recording at every tenth
of second the height of the ball. For example with v = 15 km/h the device gets
something of the following form: (0, 0.0), (1, 0.367...), (2, 0.637...),
(3, 0.808...), (4, 0.881..) ... where the first number is the time in tenth
of second and the second number the height in meter.
Task

Write a function max_ball with parameter v (in km per hour) that returns
the time in tenth of second of the maximum height recorded by the device.
Examples:

max_ball(15) should return 4

max_ball(25) should return 7
Notes

    Remember to convert the velocity from km/h to m/s or from m/s in km/h
    when necessary.
    The maximum height recorded by the device is not necessarily the maximum
    height reached by the ball.
==========
i: v (height as an integer) in km/h
o: time in 10ths of second of max v as recorded
r:  speed v (km/h)
    gravity g (g ~ 9.81 m/s**2)
    height h at t time is h = v*t - 0.5*g*t*t
    recording every 10th of a second the h  (10th of second, h in meters)
f:
=end

def max_ball(v0)
  # your code here
end

p max_ball(15) == 4
p max_ball(25) == 7

# solution
def max_ball(v0)
  # Go forever
  (0..Float::INFINITY).

    # 0.1 at a time
    step(0.1).

    # and we'd like an index
    with_index.

    # But do it lazily so we can stop
    lazy.

    # compute a hash containing the current step count and the height of the ball
    # Turn the v0 into m/s (which is the same as multiplying by 1000 m/s and dividing by 3600 s/hour)
    map { |t, count| { count: count, height: (v0 / 3.6) * t - 0.5 * 9.81 * t * t } }.

    # Take them two at a time so we can compare successive heights
    each_cons(2).

    # Keep going as long as the later measure is higher (we are still going up)
    take_while { |measure1, measure2| measure2[:height] > measure1[:height] }.

    # Just take the second measure of the pair
    map { |measure1, measure2| measure2 }.

    # Turn this into a real array (since we can't call last on a lazy enumerator)
    to_a.

    # And take the count of the last element in that array
    last[:count]
end