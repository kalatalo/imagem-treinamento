Here are instructions for re-creating the Using Embedded Analytics training environment, including 
the TRAINING namespace with the HoleFoods examples and users Doug, Anne, and Max. 

The instructions assume that you have installed IRIS or IRIS for Health and activated the license
key.

Note: The installer script works in both Windows and Linux environments. It does not work in a container.

1. Place the contents of Analytics.zip in a directory on your local machine.
Note that the following instructions assume the setup directory is in /Analytics/ 
(C:\Analytics on windows). 

2. Run the following IRIS terminal command to import the installer script into the USER namespace and
compile it. 

USER>Do $System.OBJ.Load("/Analytics/setup/Installer.xml","ck")

3. Run the installer script.

USER>Do ##class(Training.Analytics.Installer).Install()


