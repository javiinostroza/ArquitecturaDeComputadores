# Entrega 1-C de Javiera Inostroza Ríos


## Módulos


### fulladder4.vhd:
	   
Módulo que recibe la señal de 9 switches y entrega el resultado de la suma 
	   
de los cuatro primeros más los 4 siguientes más el switch carry (el siguiente), 
	   
a través de leds en forma binaria (5 bits) y a través del display en forma decimal. 
	   
           

sw : in STD_LOGIC_VECTOR (8 downto 0);
           
led : out STD_LOGIC_VECTOR (4 downto 0);
           
clk : in STD_LOGIC;
           
seg : out STD_LOGIC_VECTOR (6 downto 0);
           
an : out STD_LOGIC_VECTOR (3 downto 0));




### binary_bcd_decoder.vhd:

	
Decodifica la señal de 5 bits (resultante de la suma), en su equivalente BCD, separando la decena de la unidad.

	 
n       : in  STD_LOGIC_VECTOR (4 downto 0);
	 
dec : out STD_LOGIC_VECTOR (3 downto 0);
	 
unit    : out STD_LOGIC_VECTOR (3 downto 0);
           


### Display_Controller.vhd:
	
Codifica los valores que quieres entregar en los display 7 segmentos.
	
        
dis_a       : in   STD_LOGIC_VECTOR (3 downto 0);
        
dis_b       : in   STD_LOGIC_VECTOR (3 downto 0);
        
dis_c       : in   STD_LOGIC_VECTOR (3 downto 0);
        
dis_d       : in   STD_LOGIC_VECTOR (3 downto 0);
        
clk         : in   STD_LOGIC;
        
seg         : out  STD_LOGIC_VECTOR (6 downto 0);
        
an          : out  STD_LOGIC_VECTOR (3 downto 0);







## Circuito



![enter image description here](https://www.draw.io/?lightbox=1&highlight=0000ff&edit=_blank&layers=1&nav=1&title=Untitled%20Diagram.drawio#R7V1dk5s2FP01O5M%2bZAdJiI/HdLcfD%2b0003Sm6VOGrInNlDVbzMbe/PqCAdtcvIsiJF0ZNg9Zg42Mdc7Vvbr3SFyxm/vdL3n0sPo9W8TpFXUWuyt2e0UpodQp/1RnnuoznufWJ5Z5smg%2bdDzxIfkWNyeb65aPySLedD5YZFlaJA/dk3fZeh3fFZ1zUZ5n2%2b7HvmRp91sfomXcO/HhLkr7Z/9OFsWqPhtQ/3j%2b1zhZrtpvJl5Yv3MftR9ufslmFS2y7ckp9tMVu8mzrKhf3e9u4rTqvLZf6ut%2bfubdw43l8boQuSCmq%2bjDMni7zd2ChIuftn%2bs/3zbtPI1Sh%2bbH9zcbPHU9kB53w/Vyyy/Yj9uV0kRf3iI7qoz2xLy8tyquE/LI1K%2bzLMiKpJsXR6GTnnctB7nRbx79rbJoTNKFsXZfVzkT%2bVHmgt4yOtLGgIRtzneHuHgTRevTpBwm3NRQ4DloeVjH5Uvmm76ji5r8Xypz6pfnJQk%2bi36HKfvs03SdMrnrCiy%2b7JjDmSoemkRbVbxojmI0mRZffSu7J%2b46vIvSZreZGnV/WXT7Mv%2bX7fb269711xbZBUumyLP/j2wltTfuofyfresrPU6TkuTyasrr9Nsmdx9WkZFvDl5XV6TPcR5i%2bmeAlowdjoYs8DpYRyewZhrw1jALiaK8U4XyJ7XNWTm9EEOTBoyo8Mgx%2bvFu8qLlEfrbB13IYl3SfGxgbR6/U/1%2bpry5vB2d/Le7dPJwfs4T8rfUEF/e%2bzdeNFzRaBvy1vLHvO7%2bIUf9RwIA6Nley6P0xL3r937ONfzzTe8z5LyDg8Y%2bxQM1gyAV99/c9Wps4INkW5DkARFlC/jotfOngeHXz2CGt6r/Su3fxdwg2PbfzjS/kXNFssaPRg6yVojbMiwNboCEddlA%2bWrAsp3r3GhEgicLhsq1g1VCVFkU72GdCM1NvqxHinSRSqUtin%2bYju6cWIjcTofpfqoUSoqMXigarQdYJhuZrhamIE7f8EdMmgXUMq4JDOGvIRuagjMX16mxrq8gY%2bnBzU5eHt4JMf%2b6On0SJ4edbe8FLN7qPwAPptKO39/oCHd/PBV8cPp8sPHJohdMy55gsCGqGGCBMMEQS4MeNQHcx0a9ksD7hmwtWUU%2bBRjtZoKaBblApcsHcYzv9uQZ9ai%2bOho7Zkhl2IPucgE4UEX10CWIJBppgnCtQwe8y5HAEh9WW4MkUw3N8bG86KQ4qXVBkZn6cDJtBUri6xVzLxsjCdamxz0K1bleRnUGojHHbhTPS4QyWMTEtlHiRISO9ABjJR2ZiD/yQwPkR61iZHiRLI89%2bA7oPInyw8fBMKuY5YfhE41e3mi%2b0SpewBcpV0aqHu4hovMhI4NskQxvXioeg2ZRsr%2bPKJLLBMYEyogTJqo%2bkyX%2bMwFQxa6wvhQdJ4hyNokhi6MbLElxoSN1UPZOGFquIvmHKGQVFa/wRmqVo6ICNBfh4DvHAI8y1TGhI0tCopaLpo9wgBK2h5xRf%2bEjS3R2Y6Uq0oQ7obIOmPCxlbLrMcKpPukhcY98zScgCYii2kuGypQK5CVKEDzNKwnJWx07crCclOTgkDjhqNqyB0gmXZyjK4j2TiTQSYHlJzI6o0HnYV2doxdS2dryr6ZpNkSW0sLSqFvMV2GJqMX8VkrOcZOh6iiSK8hw5pjIrJ4ELtY4FonOiajV/JZGba5uCG9BzyzdEzPcWXHZPz6QVt1x9gU8RUJj3tcM06RSS4kxC5SAFBl1TiDNNPODqvUOFb6qrZgPzxkIc83oYRQVlbicuzZxAXIrLFTG8KkxPajgJSyIyV3cHWtRGTR5GUmQWou4eVQFanhYA7VuHDRnfqWU%2bqggg0ZRqq9b4tzEZTZJlzkAgmciQpadOlZKFyHhC5c5ALppomCrE21xGDogi5c1LSVAXJMXHMXyzkyqE2TrQUzjiu%2bEdnL4HUI%2bM6BHu5Khi5cHL0hgajlotkjDKCk7RFZSDz57QGYKokpI9jCxdEbBNiOFQX5HGnhYs88TScZRy%2bdtx4qkA%2bWLXJC8zStTeOj1Uc2VhU4agGLqtrKf4hkusnRZoEnNpPBJQcsWcsKFwedhXZ2jF6gZ2vOvp6k2RJbS6vSoG8xXmpUt12JdcJF5HSIMorAhkwLFz2BZBl2scCzT7jYPgpwWmFbTQY0zww2/JCO6amPLFz0xqaf7BUuIlMkVCRc7HHNOEVGS9OsDO1xvTIM7WXlOIM0086O6WfaFG2a2gugjBuyVcopK8MKLh7V46YGoJxPVgFEkZ%2bRcXiSs82kxHZVFxPyAFLKOjVGkTWm7Y3bQUpxLlmfjACbSknvnsp6Oy6aZsh0M5q40RYFwEo7NlAQMa5C9ulIhoiCevlQwYZMI2V/YhFuxocuQvbnK07TtqkeiJ7QNci%2bQG5wohhrEyASYpsG2Z9keq/mLpZrJKoeNU48XB2dL5Ddex0Cvm8IgNtDokuQ/akr8IiqvYxhQ8bNceorG4kqPRyh2BLk1oYnixVIwUgrkHvWaToFHYzN5diOFCg2yooVoHGa1pgGYzMqVpacfNScvarFOQMU006NSS6kxKUGKDFKq4%2bH/IR2bowWwNmaqq9nZ7ZE1dLKUuhXjNegA10iOHzxMXIeRBlFYEOmxceBQJYMuUbg26c9Dia5133NBSybAiIL6Wg%2bQFYeB8rUaNYpj3EJQhxFymPINOMM0bPgFDuoR65MAFBlFTiDLNPNjpadk83aDA3Q0rGTaTsOrdJKWRlStHIKgYAeNScA5vLSsuMAecYXUvspie2nhCmJHe4ATkp7NIasOg6VPUTAukQVbswDN3KTZgiIiI2rjsPppjJR91EA7siVnVODKohxzXFo1VMERPmBhTqnisYF2JB5zzH1RZiDD/iRfvyWcaimLrYaet67MFK9JT6GgZq61mpof9sL2USetl8/WaCGRMAXss6GOufyQF5aVLrfbH%2bjR8S8/x6z9o23m%2bRbefZd%2bYHgYXd8r3y1rP7eRXn%2b9Mlp2ypvrm6ufrfHhSLeFV0C1OLhVnfcEORUityc6smVoRb5Plksqq85W/3Ls8f14iB9brpiVMEPGF4L70C5D5ZOlZX7qHNueqIA4M32jfvD7OD14OOf0OE9J5NQAy%2bZH7wcWC8Jr8XK9RoBPjd9VAOwMz%2bAPbhxU99%2bmVl4z80S1cBL5wcvo7Z533MzSzXw8vnBCx%2bYVw7PIQ24T9z6f4aMNtEaTJPZ4c0DKJ87PDEYD2OqB%2bM0Xrxh8zNpAh9M6KMDfK7ip8yI6ewQdp2eEXPsoJpomhRXRjzLaRMs2qADrGlaXAE8y2nTM1U5PIA1BdYVwGMmTnlcfkH0ef%2bBqvMfqszt/tfzH6/4bQXtY5HVN7G/oEU6jb8UZ3BudlIo8U3Wy7%2bqg9u3rqLJUs/1olvtufKOMtfLZoEqXD2KHzFTjRFzlYJ2bsrhrmib/JwfcZ3bKN1Fnp/Zxsgw8ppC6c32jTc/J9xb%2b4EOr77S0utM2AJ49ZWW/BnCC%2bZIFpSWqL7aQzA/gGHlXyO%2b5WGeVV1%2beO%2bXaju137NFXH3ifw==)




# Importante!!



En el módulo Display_Controller.vhd modifiqué algunas líneas:

 
- Línea 14 (Dentro del port):
	
	**antes:**     seg   :   out  STD_LOGIC_VECTOR (7 downto 0);
	
	**ahora:**    seg   :   out  STD_LOGIC_VECTOR (6 downto 0);
 
- Líneas 57 - 67 (dentro del "with number select seg <= ", a todos los números de 8 bits les eliminé el primer bit, 
dejándolos de 7).
 

**ahora:**
                
"1000000" when "0000",
                
"1111001" when "0001",
                
"0100100" when "0010",
                
"0110000" when "0011",
                
"0011001" when "0100",
                
"0010010" when "0101",
                
"0000010" when "0110",
                
"1111000" when "0111",
                
"0000000" when "1000",
                
"0010000" when "1001",
                
"1111111" when others;