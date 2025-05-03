# JRL_Task

## Steps to Build, Compile, and Run:

1. Create a build directory using the command `mkdir -p build`
2. cd into `build`, run the command: `cmake ../ -DCMAKE_BUILD_TYPE=RelWithDebInfo`
3. Upon successful completion of that code, run `make`
4. `sudo make install`
5. Make sure to include the controller name `JRLTask` in the mc_rtc config file.
6. Run the following commands to test the controller: 
    - `ros2 launch mc_rtc_ticker display.launch &` to run the visualizer in the background.
    - `mc_rtc_ticker` to see the controller in action.
7. This should show the robot (JVRC-1) running the controller.
8. To cycle through states, click the "Start Next State" button. This is available once the current state executes fully.
9. That is it! This is how you run the `JRLTask` controller.

## Image of the Controller Running
![image](https://github.com/user-attachments/assets/1446948d-b1df-45f1-a9ee-7e4102e867c6)
