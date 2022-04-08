use db;
delimiter //
create procedure WORDSGAME(
		word1 varchar(35),
        word2 varchar(35),
        word3 varchar(35),
        word4 varchar(35),
        word5 varchar(35)
	)
    begin 
		set @SUBS1 = SUBSTRING(word1,1,3);
        set @SUBS2 = SUBSTRING(word2,1,3);
        set @SUBS3 = SUBSTRING(word3,1,3);
        set @SUBS4 = SUBSTRING(word4,1,3);
        set @SUBS5 = SUBSTRING(word5,1,3);
        set @concatVar = CONCAT	(@SUBS1,@SUBS2,@SUBS3,@SUBS4,@SUBS5);
		insert into createQR(name)values(@contactVar);
    end
//
