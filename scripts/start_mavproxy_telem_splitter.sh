# this starts mavproxy so that the serial link to the companion computer (on /dev/ttyACM0) 
# is available to a companion computer and external GCSs via UDP. This broadcasts so that
# multiple IP addresses can receive the telemetry.

# For PixHawk or other connected via USB on Raspberry Pi
cd /home/pi
#mavproxy.py --master=/dev/ttyAMA0,57600 \ #FOR TELEM 2 (PIXHAWK) SERIAL PORT (NO USB)
mavproxy.py --master=/dev/serial/by-id/usb-3D_Robotics_PX4_FMU_v2.x_0-if00,115200 \
            --source-system=200 \
            --cmd="set heartbeat 0" \
            --out udpin:localhost:9000 \
	    --out udpbcast:192.168.1.255:14550
#            --out udpbcast:192.168.42.255:14550
