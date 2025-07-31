🛰️ Morse Code Transmitter & Receiver (Arduino Project)

This project demonstrates a complete Morse Code communication system using two Arduino Uno boards. The first board acts as the transmitter (with buzzer, LED, and button), and the second one is the receiver, decoding and displaying characters on an I2C LCD screen.

📦 Features

    🔴 Morse code generation with buzzer + LED

    🟢 Real-time decoding via button press or keyboard input

    📟 LCD display of received characters

    🔁 Resettable LCD output

    🧠 Supports full A–Z, 0–9 characters

🧰 Components Used
Component	Qty
Arduino Uno	2
Buzzer	1
Push Button	2
LED (Red & Green)	2
16x2 LCD (I2C)	1
Wires + Breadboard	N/A


⚙️ How It Works

    Transmitter:

        Press the button to input Morse code (short = dot, long = dash)

        Or type directly into Serial Monitor

        Arduino converts characters to Morse and sends over I2C

    Receiver:

        Receives characters over I2C

        Displays on 16x2 LCD

        Optional reset button to clear LCD

🚀 How to Use

    Upload transmitter.ino to the first Arduino

    Upload receiver.ino to the second Arduino

    Connect both Arduinos via I2C (SDA/SCL)

    Power up both boards

    Press the button or use Serial Monitor on the transmitter board

    Watch characters appear on the LCD

🧠 Notes

    I2C Address assumed: 0x27 (you can change in code if needed)

    Morse timing uses WPM = 5 (dot length = 240ms)

    Communication is unidirectional via I2C (Wire)

📁 Files Included

    transmitter.ino – Arduino sketch for Morse sender

    receiver.ino – Arduino sketch for Morse receiver

    Morse Code diagram.png – Circuit wiring diagram (Tinkercad-style)

🙌 Credits

    Project developed using Arduino IDE and Adafruit LiquidCrystal Library

    Inspired by amateur radio communication and embedded systems learning

📜 License

This project is open-source under the MIT License.
Feel free to modify and share!
