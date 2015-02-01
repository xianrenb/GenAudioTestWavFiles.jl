using AudioIO
sample_rate = 44100
data = zeros(Float64, sample_rate * 10)
f = AudioIO.open("wave440.wav", "w")

for i = 1:sample_rate*10
    data[i] = sinpi(1.0 * i / sample_rate * 2 * 440)
end

write(f, data)
close(f)
f = AudioIO.open("wave880_volume_1_percent.wav", "w")

for i = 1:sample_rate*10
    data[i] = 0.01 * sinpi(1.0 * i / sample_rate * 2 * 880)
end

write(f, data)
close(f)
f = AudioIO.open("wave1320_volume_1_percent.wav", "w")

for i = 1:sample_rate*10
    data[i] = 0.01 * sinpi(1.0 * i / sample_rate * 2 * 1320)
end

write(f, data)
close(f)
f = AudioIO.open("wave440_thd_1_percent_even.wav", "w")

for i = 1:sample_rate*10
    data[i] = 0.99 * sinpi(1.0 * i / sample_rate * 2 * 440)
    data[i] += 0.01 * sinpi(1.0 * i / sample_rate * 2 * 880)
end

write(f, data)
close(f)
f = AudioIO.open("wave440_thd_1_percent_odd.wav", "w")

for i = 1:sample_rate*10
    data[i] = 0.99 * sinpi(1.0 * i / sample_rate * 2 * 440)
    data[i] += 0.01 * sinpi(1.0 * i / sample_rate * 2 * 1320)
end

write(f, data)
close(f)
f = AudioIO.open("wave1000.wav", "w")

for i = 1:sample_rate*10
    data[i] = sinpi(1.0 * i / sample_rate * 2 * 1000)
end

write(f, data)
close(f)
f = AudioIO.open("imd_smpte.wav", "w")

for i = 1:sample_rate*10
    data[i] = 0.8 * sinpi(1.0 * i / sample_rate * 2 * 60)
    data[i] += 0.2 * sinpi(1.0 * i / sample_rate * 2 * 7000)
end

write(f, data)
close(f)
f = AudioIO.open("imd_itu-r.wav", "w")

for i = 1:sample_rate*10
    data[i] = 0.5 * sinpi(1.0 * i / sample_rate * 2 * 19000)
    data[i] += 0.5 * sinpi(1.0 * i / sample_rate * 2 * 20000)
end

write(f, data)
close(f)
