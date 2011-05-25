cd WEB-INF/src
javac -d ../classes *.java
cd../..
jar -cvf stock.war *.*
copy stock.war D:\tomcat\webapps
