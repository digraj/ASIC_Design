( globals
   version = 3
   space=10
   io_order = default
)

(iopin
  (top 
		(pin name = clk     offset=40    layer=3    width=0.9    depth=0.9)
    (pin name = n_rst   offset=60    layer=3    width=0.9    depth=0.9)
  )
  (left
		(pin name = write_data[7] offset=20    layer=3    width=0.9    depth=0.9)
    (pin name = write_data[6] offset=30    layer=3    width=0.9    depth=0.9)
    (pin name = write_data[5] offset=40    layer=3    width=0.9    depth=0.9)
    (pin name = write_data[4] offset=50    layer=3    width=0.9    depth=0.9)
    (pin name = write_data[3] offset=60    layer=3    width=0.9    depth=0.9)
    (pin name = write_data[2] offset=70    layer=3    width=0.9    depth=0.9)
    (pin name = write_data[1] offset=80    layer=3    width=0.9    depth=0.9)
    (pin name = write_data[0] offset=90    layer=3    width=0.9    depth=0.9)
  )
  (bottom
		(pin name = fifo_empty    offset=20    layer=3    width=0.9    depth=0.9)
    (pin name = fifo_full     offset=40    layer=3    width=0.9    depth=0.9)
    (pin name = transmit      offset=60    layer=3    width=0.9    depth=0.9)
    (pin name = write_enable  offset=80    layer=3    width=0.9    depth=0.9)
  )
  (right
		(pin name = d_plus    offset=40    layer=3    width=0.9    depth=0.9)
    (pin name = d_minus   offset=60    layer=3    width=0.9    depth=0.9)
  )
)
