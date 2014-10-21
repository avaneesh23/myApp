How to install Bell-Apps on a windows machine
Pre-requisites (Do these before running the "BeLL-Offline-Installer")
	1- Uninstall CouchDB and Node.js from the system if they have been already installed.
	2- Clear cookies and cache of your firefox browser before starting the BeLL installer.
	   Here's some guidance on how to clear existing cookies and cache in ff:
		- Go to 'Tools' in the menu bar
		- Click on 'Options'
		- Click on 'Privacy Tab'
		- Click on the "clear your recent history" link
		- Select/Check the "Cookies" and "Cache" options from the list of checkboxed options that appear in a dialog/menu
		- Click on "Clear Now"

Running the "BeLL-Offline-Installer"
	Run the file "install.bat" (inside the unzipped "BeLL-Offline-Installer" folder) by double clicking on it.
	Here's what it will do:
		1- launch node.js setup  (follow the wizard that pops up to install this dependency)
		2- launch couchdb setup  (follow the wizard that pops up to install this dependency)
		3- run the couchdb service (in case it was not installed as a service while following step 2 above)
		4- create databases and post design documents and bare minimal records (required to launch the BeLL application) 
		   in them. (Only a couchdb database named "resources" will remain unaffected by the installer if it existed on 
		   the host system before starting to apply the instructions in this document.)
		6- push the a release version of the BeLL-Apps code to the "apps" database created in the previous step

That's all. Its time to check if the app has been installed correctly. Open up firefox and load the following
URL in it:
			http://127.0.0.1:5984/apps/_design/bell/MyApp/index.html
If the application login page loads up, you've made it. Close any command prompt (black screen window) that has remained
opened till after loading the application homepage above.)