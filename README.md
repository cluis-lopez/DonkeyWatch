# DonkeyWatch

Extremely small app to remotely watch the downloading status of a MlDonkey server running on any Linux box. I made this to access my box inside a firewalled home network from any internet connected device. The web page uses bootstrap so works flawlessly in any mobile device

INSTALL BASH SCRIPTS ON YOUR LINUX MLDONKEY SERVER:

- launch_mldonkey: just runs the mldonkey server in the background and launch the next script (daemon) in the background too
- daemon: connects to the mldonkey server through the character interface, extracts the status of the server and writes to a temporary file. Sleeps for 15 minutes and repeat.
- emule_stats: reads the temporary file, formats the output and using curl, sends the formatted data via HTTP POST. Install your serverlet in your favourite cloud provider. My own is Google App Engine

In your cloud provider, install the Java webapp. It's made of just two components:

- PostServlet: this servlet just gets the data via HTTP POST and stores it in a single entitty in the Google Datastore. It's invoked each 15 minutes when the script inside the linux box is running
- index.jsp: this is the only frontend component. It's a JSP using jQuery and Bootstrap that connects to Google Datastore, extracts the info and formats into a nice webpage


Enjoy.
