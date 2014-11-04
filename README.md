PuredataMidiFilter
==================

A simple midi filter in Pure Data. Basically it acts as MIDI-THRU for notes, leaving out MIDI-CC 123 (All notes off) which causes problems with old syths.

Install with:  ansible-playbook install.yml  -i hosts
