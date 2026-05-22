pages
installationPage
	^HelpTopic
		title: '2] Installation Squeak Maps' "has to be updated manually"
		icon: (HelpIcons iconNamed: #mapPinIcon)
		contents: 'FIRST TIME INSTALLATION
----------------------------------------------
					
1. Open the Squeak Image			
2. In the top navigation bar click on Apps and choose Git Browser
3. In the top right corner right-click on Right click here to add a project and choose Clone
4. Enter the https URL of this project: https://github.com/hpi-swa-teaching/SqueakMaps.git
5. As directory choose SqueakMaps and click on I copied it.
6. Enter a name and an email-address for Git usage
7. Load the current commit into the Image
8. Click on Load Changes
9. Now open a Workspace (left click and click on Workspace) paste

	Metacello new
	baseline: ''SqueakMaps'';
	repository: ''github://hpi-swa-teaching/SqueakMaps/packages'';
	load.

	run the command by selecting everything and clicking Ctrl-D
10. And you are ready to go'