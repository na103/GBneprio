## GameBoy  compatible 2MB Flash Cart 
A classic Game Boy Cart with only a 2MB flash ROM, designed for low cost and low power consumption.</BR>
Derived from the MBC5/MBC1 hybrid by insideGadgets and adapted to the ATF1502 logic CPLD.
</BR></BR>
![alt text](https://github.com/na103/SLcart/blob/main/Images/SLcart.png "SLcart")

## Bill of materials
| Qt. |    Description     |             Designator          |    JLCPCB part     |        Mouser part            |
|:---:|--------------------|---------------------------------|--------------------|-------------------------------|
|3    |Capacitor 100nF     |C1,C2,C3                         |C106221             | CC0603ZRY5V9BB104             |
|1    |CPLD                |U1                               |C1521098            | ATF1502AS-10AU44              |
|2    |16Mbit Flash Rom    |U2                               |C1015902            | M29F160FT55N3E2               |


## Note

Please note that the PCB thickness must be 0.8mm.</br>
In the PCB Assembly folder, you can find the BOM and CPL files for production and assembly with JLCPCB.</br>
To program the CPLD, you will need a compatible JTAG programmer (e.g., Atmel ATDH1150USB) and the SKEDD connector from Wurth Elektronik (code 490107671012).</br>
When programming the CPLD from the JTAG connector, you must supply the board with 5V separately.</br>

![alt text](https://github.com/na103/SLcart/blob/main/Images/JTAG.png "JTAG")



If you found this my work useful, please consider buying me a cup of coffee if you want:<br>
<a href='https://ko-fi.com/na103' target='_blank'><img height='36' style='border:0px;height:36px;' src='https://storage.ko-fi.com/cdn/cup-border.png' border='0' alt='Buy Me a Coffee at ko-fi.com' /></a>


## License

This work is licensed under a Creative Commons Attribution 4.0 International License. See [https://creativecommons.org/licenses/by/4.0/](https://creativecommons.org/licenses/by/4.0/).
