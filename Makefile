VERILOG = iverilog
TARGET = decoder.vcd
TEMP = decoder.vvp

$(TARGET) : decoder.vvp

	vvp decoder.vvp

decoder.vvp: 3X8Decoder_tb.v 3X8Decoder.v

	$(VERILOG) -o decoder.vvp 3X8Decoder_tb.v 3X8Decoder.v

clean:
	-del $(TARGET)
	-del $(TEMP)