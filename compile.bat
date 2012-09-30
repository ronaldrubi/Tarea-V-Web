PATH=C:\Program Files\Java\jdk1.6.0_25\bin

javac -classpath lib/servlet-api-2.5.jar;lib/commons-logging-1.1.1.jar;universidad/WEB-INF/lib/spring-webmvc-3.2.0.M1.jar -d universidad/WEB-INF/classes src/service/*.java src/domain/*.java src/web/*.java