oreder = Order.new
        .with(:LATTE,       :size=>:TALL,  :milk=>:SOY)
	.with(:CAPPUCCUINO, :size=>:SHORT, :milk=>:NON_FAT)
	.with(:AMERICANO,   :size=>:GRANDE)
	.prepare


