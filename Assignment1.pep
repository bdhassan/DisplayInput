                  BR main,i

char1:    .BLOCK  1
num1:     .BLOCK  2

main:    LDWA    0xFFFF,i
         STWA    num1,d
         DECO    num1,d
         LDBA    0xA,i
         STBA    0xFC16,d 

         LDBA    0xFC15,d
         STBA    char1,d
         LDBA    char1,d
         STBA    0xFC16,d    
         LDBA    0xA,i
         STBA    0xFC16,d

         LDBA    char1,d
         SUBA    0x0020,i
         STBA    0xFC16,d
         LDBA    0xA,i
         STBA    0xFC16,d

         LDBA    char1,d
         STBA    0x71,d
         DECO    0x70,d
         LDBA    0xA,i    
         STBA    0xFC16,d  

         LDBA    char1,d 
         SUBA    0x0020,i
         STBA    0x71,d
         DECO    0x70,d
         LDBA    0xA,i    
         STBA    0xFC16,d

         LDBA    char1,d
         STBA    0x71,d
         HEXO    0x70,d     
         LDBA    0xA,i
         STBA    0xFC16,d

         STOP
         .end