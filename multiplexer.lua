--[[
Combinations
0 0 0 0
0 0 0 1
0 0 1 0
0 0 1 1
0 1 0 0
0 1 0 1
0 1 1 0
0 1 1 1
1 0 0 0
1 0 0 1
1 0 1 0
1 0 1 1
1 1 0 0
1 1 0 1
1 1 1 1
--]]

alarm_interval_ms = 500

led_0_pin = 6 -- GPIO12
led_1_pin = 5 -- GPIO14
led_2_pin = 2 -- GPIO2
led_3_pin = 1 -- GPIO5

led_0_state = gpio.LOW
led_1_state = gpio.LOW
led_2_state = gpio.LOW
led_3_state = gpio.LOW

led_0_interval = 1
led_1_interval = 2
led_2_interval = 4
led_3_interval = 8

led_0_cnt = 0
led_1_cnt = 0
led_2_cnt = 0
led_3_cnt = 0

gpio.mode(led_0_pin, gpio.OUTPUT)
gpio.mode(led_1_pin, gpio.OUTPUT)
gpio.mode(led_2_pin, gpio.OUTPUT)
gpio.mode(led_3_pin, gpio.OUTPUT)

gpio.write(led_0_pin, led_0_state)
gpio.write(led_1_pin, led_1_state)
gpio.write(led_2_pin, led_2_state)
gpio.write(led_3_pin, led_3_state)

tmr.create():alarm(alarm_delay_ms, tmr.ALARM_AUTO, function()

	if(led_0_state == gpio.HIGH) then
		if(led_0_cnt == led_0_interval - 1) then
			led_0_state = gpio.LOW
			led_0_cnt = 0
		else
			led_0_cnt = led_0_cnt + 1
		end
	else
		if(led_0_cnt == led_0_interval - 1) then
			led_0_state = gpio.HIGH
			led_0_cnt = 0
		else
			led_0_cnt = led_0_cnt + 1
		end
	end
	print(led_0_state)
	
	if(led_1_state == gpio.HIGH) then
		if(led_1_cnt == led_1_interval - 1) then
			led_1_state = gpio.LOW
			led_1_cnt = 0
		else
			led_1_cnt = led_1_cnt + 1
		end
	else
		if(led_1_cnt == led_1_interval - 1) then
			led_1_state = gpio.HIGH
			led_1_cnt = 0
		else
			led_1_cnt = led_1_cnt + 1
		end
	end
	print(led_1_state)
	
	if(led_2_state == gpio.HIGH) then
		if(led_2_cnt == led_2_interval - 1) then
			led_2_state = gpio.LOW
			led_2_cnt = 0
		else
			led_2_cnt = led_2_cnt + 1
		end
	else
		if(led_2_cnt == led_2_interval - 1) then
			led_2_state = gpio.HIGH
			led_2_cnt = 0
		else
			led_2_cnt = led_2_cnt + 1
		end
	end
	print(led_2_state)
	
	if(led_3_state == gpio.HIGH) then
		if(led_3_cnt == led_3_interval - 1) then
			led_3_state = gpio.LOW
			led_3_cnt = 0
		else
			led_3_cnt = led_3_cnt + 1
		end
	else
		if(led_3_cnt == led_3_interval - 1) then
			led_3_state = gpio.HIGH
			led_3_cnt = 0
		else
			led_3_cnt = led_3_cnt + 1
		end
	end
	print(led_3_state)

	print("")

	gpio.write(led_0_pin, led_0_state)
	gpio.write(led_1_pin, led_1_state)
	gpio.write(led_2_pin, led_2_state)
	gpio.write(led_3_pin, led_3_state)

end
)



