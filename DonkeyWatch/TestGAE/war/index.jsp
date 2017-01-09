<%@page import="java.io.IOException"%>
<%@page import="java.io.PrintStream"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.StringTokenizer"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.TimeZone"%>
<%@page import="java.util.HashMap" %>
<%@page import="java.text.NumberFormat" %>

<%@page import="javax.servlet.http.*"%>

<%@page import="com.google.appengine.api.datastore.DatastoreServiceFactory"%>
<%@page import="com.google.appengine.api.datastore.DatastoreService"%>
<%@page import="com.google.appengine.api.datastore.Entity"%>
<%@page import="com.google.appengine.api.datastore.EntityNotFoundException"%>
<%@page import="com.google.appengine.api.datastore.Key"%>
<%@page import="com.google.appengine.api.datastore.KeyFactory"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Server Check - MLDonkey Status</title>

    <!-- Bootstrap Core CSS - Uses Bootswatch Flatly Theme: http://bootswatch.com/flatly/ -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/freelancer.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body id="page-top" class="index">

    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#page-top">Server Check</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li class="page-scroll">
                        <a href="#portfolio">Servers</a>
                    </li>
                    <li class="page-scroll">
                        <a href="#about">About</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <!-- Header -->
    <header>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <img class="img-responsive" src="img/profile.png" alt="">
                    <div class="intro-text">
                        <span class="name">Clopez's<br>Check your Server</span>
                        <hr class="star-light">
                        <span class="skills">Check your MLDonkey Server status no matter where you are</span>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- Portfolio Grid Section -->
    <section id="portfolio">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Your Servers</h2>
                    <p>Click on the server's icon to get the current status</p>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 portfolio-item">
                    <a href="#portfolioModal1" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="img/Microserver.png" class="img-responsive" alt="">
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item">
                        <div class="caption">
                        </div>
                        <p><br><br>HP Microserver Gen8<br>Centos 7<br>Linux Kernel 3.10.0-229</p>
                    </a>
                </div>
            </div>
        </div>
    </section>

    <!-- About Section -->
    <section class="success" id="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Acerca de Server Check</h2>
                    <hr class="star-light">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-lg-offset-2">
                    <p>Server Check es una peque&ntilde;a herramienta para chequear el estado de las descargas del servidor P2P MLDonkey</p>
                </div>
                <div class="col-lg-4">
                    <p>Server Check est&aacute; alojado en Google App Engine y emplea su Datastore para almacenar el estado del servidor con lo que este es accesible desde cualquier dispositivo conectado a Internet</p>
                </div>
            </div>
        </div>
    </section>


    <!-- Footer -->
    <footer class="text-center">
        <div class="footer-above">
            <div class="container">
                <div class="row">
                    <div class="footer-col col-md-4">
                        <h3>Autor</h3>
                        <p>Carlos L. L&oacute;pez<br>Las Rozas<br>Espa&ntilde;a</p>
                    </div>
                    <div class="footer-col col-md-4">
                        <h3>En la Web</h3>
                        <ul class="list-inline">
                            <li>
                                <a href="https://www.facebook.com/profile.php?id=1525760604" class="btn-social btn-outline"><i class="fa fa-fw fa-facebook"></i></a>
                            </li>
                            <li>
                                <a href="https://plus.google.com/u/0/108455340566994747308" class="btn-social btn-outline"><i class="fa fa-fw fa-google-plus"></i></a>
                            </li>
                            <li>
                                <a href="https://www.linkedin.com/in/carlos-lopez-25977223?trk=hp-identity-name" class="btn-social btn-outline"><i class="fa fa-fw fa-linkedin"></i></a>
                            </li>
                        </ul>
                    </div>
                    <div class="footer-col col-md-4">
                        <img src="img/Avatar.jpg " class="img-circle" width="200" height="200">
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-below">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        Copyright &copy; Carlos L. Lopez 2016
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
    <div class="scroll-top page-scroll visible-xs visible-sm">
        <a class="btn btn-primary" href="#page-top">
            <i class="fa fa-chevron-up"></i>
        </a>
    </div>

    <!-- Portfolio Modals -->
    <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2>Estado del Servidor</h2>
                            <hr class="star-primary">
                            
<%
Date ts= new Date(), now= new Date();
String stat;
String diferencia="";
String[] s = new String[10];
String[] p = new String[10];
ArrayList<String> ficheros = new ArrayList<String>();

DatastoreService ds = DatastoreServiceFactory.getDatastoreService();
Key k = KeyFactory.createKey("ServerStatus", "status");
Entity serverstat;
try { //Lectura desde el Datastore
	serverstat = ds.get(k);
	stat = (String) serverstat.getProperty("Status");
	ts = (Date) serverstat.getProperty("TimeStamp");
	ficheros = (ArrayList<String>) serverstat.getProperty("Ficheros");
	HashMap<String, Integer> mm = new HashMap<String, Integer>();
	mm.put("b",1);
	mm.put("kb", 1024);
	mm.put("mb", 1024*1024);
	mm.put("gb", 1024*1024*1024);
	
	// Formateamos la fecha
	SimpleDateFormat sdf = new SimpleDateFormat("EEEE dd-MM-YYYY z kk:mm:ss");
	sdf.setTimeZone(TimeZone.getTimeZone("Europe/Madrid"));
	
	//Formateador de números en coma flotante
	NumberFormat nf = NumberFormat.getInstance();
	nf.setMaximumFractionDigits(2);
	nf.setMinimumFractionDigits(2);
	
	// Aqui calculamos el tiempo desde la última conexión
	long diff=(now.getTime()-ts.getTime())/1000;
	if (diff<=60)
			diferencia="La &uacute;ltima conexi&oacute;n fue hace un instante";
	else if (diff>60 && diff<=3600)
			diferencia="La &uacute;ltima conexi&oacute;n ocurri&oacute; hace "+(diff/60)+" minutos";
	else if (diff>3600 && diff<=86400)
			diferencia="La &uacute;ltima conexi&oacute;n ocurri&oacute; hace "+diff/3600+" horas";
	else diferencia="Hace m&aacute;s de un d&iacute;a desde la &uacute;ltima conexi&oacute;n. Es probable que el servidor MLDonkey est&eacute; parado";
	
	//Ahora, troceamos la linea de status
	StringTokenizer st = new StringTokenizer(stat,"|",false);
	int i=1;
	while (st.hasMoreTokens()){
		s[i]=st.nextToken();
		i++;
		}
%>                          <p class="text-left"><%="Ultima conexi&oacute;n: "+sdf.format(ts) %></p>
							<p class="text-left"><%=diferencia %></p>
							<hr style="margin: 25px auto 30px; padding: 0; max-width: 250px; border: 0; border-top: solid 5px; text-align: center;">
							<table class="table table-striped">
								<th>Estado del Server</th>
									<tr>
										<td class="text-left"><%=s[1]%></td>
									</tr>
									<tr>
										<td class="text-left"><%=s[2]%></td>
									</tr>
									<tr>
										<td class="text-left"><%=s[3]%></td>
									</tr>
									<tr>
										<td class="text-left"><%=s[4]%></td>
									</tr>
									<tr>
										<td class="text-left"><%=s[5]%></td>
									</tr>
							</table>
							<hr style="margin: 25px auto 30px; padding: 0; max-width: 250px; border: 0; border-top: solid 5px; text-align: center;">
							<div class="table-responsive">
							<table class="table">
								<thead>
									<tr>
										<th>Ficheros bajando</th>
										<th>Tama&ntilde;o</th>
										<th>Descargado</th>
										<th>%</th>
										<th>Rate</th>
									</tr>
								</thead>
								<tbody>
<%
if (ficheros == null) {
%>
	<tr>
		<td colspan="4"><h4>No hay ficheros en descarga</h4></td>
	</tr>
<%
	} else {
for (i=0; i<ficheros.size();i++){
	StringTokenizer st2 = new StringTokenizer(ficheros.get(i),"|",false);
	int j=1;
	while (st2.hasMoreTokens()){
		s[j]=st2.nextToken(); //s[1] = Nombre del fichero; s[2] = Tamaño Final; s[3] = Tamaño descargado; s[4] = Velocidad de bajada
		j++;
	}
	String split1[] = s[2].split("(b|kb|mb|gb)"); //Extraemos el valor numérico
	String multi1 = s[2].substring(split1[0].length(), s[2].length()); // Extraemos el multiplicador (bytes, kb, mb o gb)
	Float t_total = Float.parseFloat(split1[0]);
	t_total = t_total * (Integer) mm.get(multi1);
	
	String split2[] = s[3].split("(b|kb|mb|gb)"); //Extraemos el valor numérico
	String multi2 = s[3].substring(split2[0].length(), s[3].length()); // Extraemos el multiplicador (bytes, kb, mb o gb)
	Float t_actual = Float.parseFloat(split2[0]);
	t_actual= t_actual * (Integer) mm.get(multi2);
	
	Float percent = (t_actual/t_total)*100;
	String rate;
	
	if (s[4].equals("Paused")){
		rate = "Paused";	
	} else {
		rate = s[4]+" Kb/seg";
	}
		
%>
									<tr>
										<td class="text-left"><%=s[1] %></td>
										<td class="text-left"><%=s[2] %></td>
										<td class="text-left"><%=s[3] %></td>
										<td class="text-left"><%=nf.format(percent) %> %</td>
										<td class="text-left"><%=rate %> </td>
									</tr>
<%}
}
%>
								</tbody>
							</table>
							</div>
                            <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

<%} catch (EntityNotFoundException e) {
	// TODO Auto-generated catch block
	PrintStream ps = new PrintStream("No puedo usar la Entidad ServerStatus en Google Datastore");
	e.printStackTrace(ps);
	e.printStackTrace();
	} finally {
		// Do nothing
	}
%> 

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="js/classie.js"></script>
    <script src="js/cbpAnimatedHeader.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="js/freelancer.js"></script>

</body>

</html>
