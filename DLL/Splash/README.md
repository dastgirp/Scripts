## How to Inject DLL into the Client:
1. **Open LordPE**
2. **Click PE Editor as Shown Below:** <br />
![PE Editor](https://github.com/dastgir/Scripts/raw/master/DLL/Splash/img/1.png)
3. **Select the Client.exe (DLL should be in the same Directory as of Client.exe while doing furthur steps), Click on Open**
NOTE: You can rename Splash.dll, but you will have to enter new name in forward steps too <br />
![Client Select](https://github.com/dastgir/Scripts/raw/master/DLL/Splash/img/2.png)
4. **Click on the Directories as shown below:** <br />
![Directories](https://github.com/dastgir/Scripts/raw/master/DLL/Splash/img/3.png)
5. **Click on the button as shown below:** <br />
![... Button](https://github.com/dastgir/Scripts/raw/master/DLL/Splash/img/4.png)
6. **Right Click anywhere in the dialog box, and Click the add import**<br />
![Add Import](https://github.com/dastgir/Scripts/raw/master/DLL/Splash/img/5.png)
7. **Enter DLL Name in "Dll:" Column, and "_DllMain@12" at "API:" Column, then Click on the + Button.** <br />
![DLL API Name](https://github.com/dastgir/Scripts/raw/master/DLL/Splash/img/6.png)
8. **Ensure that API is added(as shown below), then click on OK** <br />
![API Ensure](https://github.com/dastgir/Scripts/raw/master/DLL/Splash/img/7.png)
9. **Ensure that DLL Name is added(as shown below) , then close the LordPE** <br />
![DLL Ensure](https://github.com/dastgir/Scripts/raw/master/DLL/Splash/img/8.png)
10. **Client.exe has been Injected with DLL, now Place the Splash.bmp and DLL on the same folder where Client.exe is there, and run the client**
NOTE:
	1) You cannot change name of Splash.bmp, and you have to place it where DLL is located
	2) Splash should be in .BMP Format ONLY.
11. **You will see the Splash Screen for 5 seconds**

## Example Splash Screen:
*** Splash Screen 1: *** <br />
![Splash](https://github.com/dastgir/Scripts/raw/master/DLL/Splash/Splash_Examples/Splash.bmp)

*** More to be added soon. ***