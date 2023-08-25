# Synthosphere
Synthosphere is a verilog hackathon which involves writing a verilog code to describe circuit behaviour (pre-synthesis) and hen translating it into an optimized gate-level representation (post-synthesis) using synthesis tools.
Name: S NITHIN
USN: 1BM21EC135
# PWM generator with variable duty cycle
Pulse width modulation (PWM) is a technique used to precisely control analog devices with a digital signal. A pulse width modulation signal consists of electronic pulses that are used to mimic a changing analog voltage. Pulse width modulation signals are commonly used to control analog devices like servos, LEDs, and DC motors. Projects using these devices need a varying voltage to control the position, brightness, or speed of the device. But most microcontrollers are unable to generate this varying analog voltage. Pulse width modulation is used to simulate this varying analog voltage using a digital microcontroller or timer.
# Duty cycle
The ratio of the pulse width to the cycle duration is called the duty cycle.

![Duty-Cycle-Formula-3-768x86](https://github.com/nithin1007/PWM_generator/assets/139645209/dc550710-4a13-428a-b85f-da8c421d95c6)

The duty cycle can be used to estimate the apparent analog voltage that a pulse width modulation signal will provide. The diagram below shows the effect of duty cycle on the apparent voltage

![Pulse-Width-Modulation-Duty-Cycle-Diagram-768x644](https://github.com/nithin1007/PWM_generator/assets/139645209/630f6d79-b249-4f57-812e-a7820be4e552)

**RTL of module**
- Program links:
   PWM generator - pwm_generator.v
**test bench** - tb_pwm_generator.v
**iverilog and gtkwave codelines:**
  - iverilog pwm_generator.v tb_pwm_generator.v
  - ./a.out
  - copy the generated dumpfile.v
  - gtkwave dumpfile.vcd
**RTL simulation**

![image](https://github.com/nithin1007/PWM_generator/assets/139645209/59c96ca8-3765-4a78-86d3-bfa00dd10473)

# Synthesis

**Flow of synthesis** 

yosys
read_liberty -lib<relative or abs path>/lib file
read_verilog <verilog_file.v>
synth -top <verilog_file>
abc- liberty <relative or abs path>/lib file
show
write_verilog <file_name>.v or write_verilog -noattr <file_name>.v

Standard cell invokation after mapping standard library file

![image](https://github.com/nithin1007/PWM_generator/assets/139645209/c79bb2b8-3a56-422a-8675-63067a850216)

# Design hierarchy with number of instances

![image](https://github.com/nithin1007/PWM_generator/assets/139645209/a307c0bc-2292-4fec-add3-219a6a8b192f)

![image](https://github.com/nithin1007/PWM_generator/assets/139645209/8c50c0ed-e4e4-449f-b2a0-9fe5e0e4c78f)

![image](https://github.com/nithin1007/PWM_generator/assets/139645209/c2cc5bb2-a42b-48b8-81bf-a485396c2454)

# Synthesis output

**PWM generator**

![image](https://github.com/nithin1007/PWM_generator/assets/139645209/2bf8608b-ffba-4b1d-981c-f4a95429dc7c)


# GLS simulation

![image](https://github.com/nithin1007/PWM_generator/assets/139645209/dc7e5aba-796c-4a14-a964-bb2d66c0b83d)


# Final design 
![image](https://github.com/nithin1007/PWM_generator/assets/139645209/6b2e3097-92cc-4708-b118-ac5606b70e52)




















