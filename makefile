all:
	julia GenAudioTestWavFiles.jl
clean:
	rm -rf *.wav
