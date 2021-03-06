PuredataMidiFilter
==================

A simple midi filter in Pure Data. Basically it acts as MIDI-THRU for notes.

The problem it tries to tackle is with old synths (such as Alpha Juno 2) which send
"All notes off" (MIDI-CC 123) when notes are released. This causes problems on some
systems where it actually turns of all other synths connected.

The current implementation lets all notes though, but discards all midi CC. A future
version will be more selective and discard only MIDI-CC 123. 

The files are supposed to be installed on Rasberry PI (http://www.raspberrypi.org/)
via Ansible scripts (http://www.ansible.com/). First deploy a Raspbian 
(http://www.raspbian.org/) image to the Raspberry PI SD card, then connect your device 
to the network and run the following 
Ansible command:

ansible-playbook install.yml  -i hosts

Remember to change the IP of your Raspberry pi in the hosts file beforehand.

The scripts assume that you are using an ESI MIDIMATE II interface:
http://www.esi-audio.com/products/midimate2/

Feel free to modify and reuse the scripts at your convenience
