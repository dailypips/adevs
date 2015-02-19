model Robot extends BaseRobot;
  parameter Real Delta = 0.0005;
  output Real xsampled, zsampled;
algorithm
  if or abs(x-xsampled) >= Delta or abs(z-zsampled) >= Delta then
    q1_sample := q1;
    q2_sample := q2;
    xsampled := x;
    zsampled := z;
	sampleNumber := sampleNumber+1;
  end if;
initial algorithm
  q1_sample := q1;
  q2_sample := q2;
  xsampled := x;
  zsampled := z;
end Robot;
