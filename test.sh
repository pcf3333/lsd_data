#!/bin/bash
rostopic pub -1 /ardrone/takeoff std_msgs/Empty;
rostopic pub -r 10 /cmd_vel geometry_msgs/Twist  '{linear:  {x: 0.0, y: 0.0, z: 0.1}, angular: {x: 0.0,y: 0.0,z: 0.0}}' & sleep 7 ; kill $!
rostopic pub -r 10 /cmd_vel geometry_msgs/Twist  '{linear:  {x: 0.2, y: 0.0, z: 0.0}, angular: {x: 0.0,y: 0.0,z: 0.0}}' & sleep 18 ; kill $!
rostopic pub -r 10 /cmd_vel geometry_msgs/Twist  '{linear:  {x: 0.0, y: 0.2, z: 0.0}, angular: {x: 0.0,y: 0.0,z: 0.0}}' & sleep 18 ; kill $!
rostopic pub -r 10 /cmd_vel geometry_msgs/Twist  '{linear:  {x: -0.2, y: 0.0, z: 0.0}, angular: {x: 0.0,y: 0.0,z: 0.0}}' & sleep 18 ; kill $!
rostopic pub -r 10 /cmd_vel geometry_msgs/Twist  '{linear:  {x: 0.0, y: -0.2, z: 0.0}, angular: {x: 0.0,y: 0.0,z: 0.0}}' & sleep 18 ; kill $!
rostopic pub -r 10 /cmd_vel geometry_msgs/Twist  '{linear:  {x: 0.0, y: 0.0, z: -0.1}, angular: {x: 0.0,y: 0.0,z: 0.0}}' & sleep 7 ; kill $!
rostopic pub -1 /ardrone/land std_msgs/Empty;
