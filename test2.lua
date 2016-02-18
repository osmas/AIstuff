print(math.sin(12))
print("Enter Farenheit Temperature")
tempFarenheit = io.read()
print(tempFarenheit .. "°F")
tempFarenheit = tonumber(tempFarenheit) -- convert String to number
tempCentigrade = (tempFarenheit-32)/1.8
print(tempCentigrade .."°C")
