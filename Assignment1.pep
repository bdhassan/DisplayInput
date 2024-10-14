         BR      main,i

num:     .BLOCK 2
char:    .BLOCK 1



main:    LDWA    0xFFFF,i    ;load -1 into A register
         STWA    num,d       ;store -1 to num 
         DECO    num,d       ;output -1   
         LDBA    0xA,i
         STBA    0xFC16,d 

         LDWA    0xFC15,d    ;get ur input
         STWA    char,d      ;store input to char
         STWA    0xFC16,d    ;display char
         LDBA    0xA,i
         STBA    0xFC16,d 
         
         LDBA    char,d      ;load char into A register
         SUBA    0x0020,i    ;subtract 32 from whats in the A register
         STBA    0xFC16,d    ;display
         LDBA    0xA,i
         STBA    0xFC16,d 

         LDBA    char,d      ;load char into register
         STBA    0x71,d      ;store char at memory location 71
         DECO    0x70,d      ;decimal output of memory location 70
         LDBA    0xA,i       
         STBA    0xFC16,d

         LDBA    char,d      ;load char into A register
         SUBA    0x0020,i
         STBA    0x71,d      ;store char at memory location 71
         DECO    0x70,d      ;decimal output of memory location 70
         LDBA    0xA,i       
         STBA    0xFC16,d

         LDBA    char,d      ;load char
         STBA    0x71,d      ;store into mem[71]
         HEXO    0x70,d      ;hex output of mem[70]
         LDBA    0xA,i       
         STBA    0xFC16,d

         

         STOP    
         .END
