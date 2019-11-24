# set the working dir, where all compiled verilog goes
vlib work

# compile all verilog modules in mux.v to working dir
# could also have multiple verilog files
vlog recordsequence.v

#load simulation using mux as the top level simulation module
vsim -L altera_mf_ver recordsequence

#log all signals and add some signals to waveform window
log {/*}
# add wave {/*} would add all items in top level simulation module
add wave {/*}

#clock
force {clock} 0 0ns , 1 {2ns} -r 4ns


# first test case
#set input values using the force command, signal names need to be in {} brackets
force {reset} 1
run 10ns
force {reset} 0
run 10 ns

force {record_mode} 1
force {record} 1 0ns, 0 {5ns} -r 80ns
force {note_sequence[9:4]} 0
force {note_sequence[3]} 0
force {note_sequence[2]} 0 0ns, 1 {40ns} -r 80ns
force {note_sequence[1]} 0 0ns, 1 {20ns} -r 40ns
force {note_sequence[0]} 0 0ns, 1 {5ns} -r 10ns
run 1000 ns

force {record_mode} 0
force {record} 1 0ns, 0 {5ns} -r 80ns
force {note_sequence[9:4]} 0
force {note_sequence[3]} 0
force {note_sequence[2]} 0 0ns, 1 {40ns} -r 80ns
force {note_sequence[1]} 0 0ns, 1 {20ns} -r 40ns
force {note_sequence[0]} 0 0ns, 1 {5ns} -r 10ns
run 1000 ns

