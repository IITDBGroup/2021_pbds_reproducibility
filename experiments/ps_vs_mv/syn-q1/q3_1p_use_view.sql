select * from (select * from v1_suma_gcc where 
(cc >= 9899794 and cc< 9905361) 
 OR (cc >= 9905361 and cc< 9910928) 
 OR (cc >= 9910928 and cc< 9916495) 
 OR (cc >= 9916495 and cc< 9922062) 
 OR (cc >= 9922062 and cc< 9927629) 
 OR (cc >= 9927629 and cc< 9933196) 
 OR (cc >= 9933196 and cc< 9938763) 
 OR (cc >= 9938763 and cc< 9944330) 
 OR (cc >= 9944330 and cc< 9949897) 
 OR (cc >= 9949897 and cc< 9955464) 
 OR (cc >= 9955464 and cc< 9961031) 
 OR (cc >= 9961031 and cc< 9966598) 
 OR (cc >= 9966598 and cc< 9972165) 
 OR (cc >= 9972165 and cc< 9977732) 
 OR (cc >= 9977732 and cc< 9983299) 
 OR (cc >= 9983299 and cc< 9988866) 
 OR (cc >= 9988866 and cc< 9994433) 
 OR (cc >= 9994433 and cc< 10000000) 
 OR (cc >= 10000000 and cc< 10000001) 
) x where suma > 158400000;
