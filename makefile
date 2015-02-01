all:
	julia gen_audio_test_wav_files.jl
clean:
	rm -rf *.wav
