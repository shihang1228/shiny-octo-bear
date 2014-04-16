REATE TABLE `member_info` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
    `user_name` varchar(20) NOT NULL,
      `password` varchar(20) NOT NULL,
        `repeat_password` varchar(20) NOT NULL,
	  `true_name` varchar(20) NOT NULL,
	    `address` varchar(50) NOT NULL,
	      `sex` varchar(10) NOT NULL,
	        `phone_number` varchar(20) NOT NULL,
		  `mail` varchar(20) NOT NULL,
		    PRIMARY KEY (`user_id`),
		      UNIQUE KEY `member_id` (`user_id`),
		        UNIQUE KEY `name` (`user_name`),
			  UNIQUE KEY `phone_number` (`phone_number`)
			  ) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 PACK_KEYS=0;
