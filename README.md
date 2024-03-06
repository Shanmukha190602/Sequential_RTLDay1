Flip-flops are vital in digital electronics for:

**Memory:** Storing binary information.

**Sequential Logic:** Enabling functions dependent on past states.

**Synchronization:** Ensuring proper timing and signal sampling.

**Control and State Machines:** Facilitating complex decision-making.

**Clocking Signals:** Generating precise timing signals.

**Data Storage and Registers:** Temporary data storage.

**DSP Applications:** Managing data flow and timing.

**Timing and Control:** Orchestrating operations within digital systems.

**Beginning with the first flip flop SR Flip Flop**

The SR flip-flop is a fundamental digital logic circuit with two inputs (S for Set and R for Reset) and two outputs (Q and its complement Q').

**Behavior:**

When S=1 and R=0, Q=1.
When S=0 and R=1, Q=0.
When both S and R are 0 or 1, the output Q holds its state or remains unchanged.
Applications:

Basic memory storage.
Control circuits for state control.
De-bouncing circuits.

**Characteristics:**

**Asynchronous:** Outputs change immediately with input changes.
**Prone to race conditions (undefined output) when both S and R are active (1).**

**Schematic Diagram of SR Flip flop implemented in Xilinx vivado is shown below**

![Screenshot (33)](https://github.com/Shanmukha190602/Sequential_RTLDay1/assets/118514275/e26361f7-594f-404d-89ea-8bace4e91a39)

**Simulation and the output is shown below**

![Screenshot (34)](https://github.com/Shanmukha190602/Sequential_RTLDay1/assets/118514275/8d448068-8b5f-494b-b2ae-24cbcf3a1501)

![Screenshot (35)](https://github.com/Shanmukha190602/Sequential_RTLDay1/assets/118514275/cc989762-1cd5-4118-b739-81883734f09d)


