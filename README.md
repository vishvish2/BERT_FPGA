The repository can be cloned to any local folder as normal using `git clone`.

## Folders
The folder `Tx` contains the Quartus Prime files for the FPGA used as a transmitter
The folder `Rx` contains the Quartus Prime files for the FPGA used as a receiver

To view the Quartus Prime designs for each:
- Open the Quartus Prime GUI
- Go to `File -> Open`
- Navigate to the directory you cloned the repository to.
- Open `Tx/BERT.qpf` to view the design for the transmitter
- Open `Rx/BERT_Rx.qpf` to view the design for the receiver

The FPGA board used was a DE0-Nano Altera board with the EP4CE22F17C6 FPGA chip.

The folder `PCB` contains the KiCad design files for the comparator circuit used for transmitting a bitstream between the transmitter and receiver FPGAs.