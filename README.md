# jinlin
测试提交


这是一个测试，请忽略提交

mvn clean package -Dmaven.test.skip=true

<plugin>
<groupId>org.apache.maven.plugins</groupId>
<artifactId>maven-surefire-plugin</artifactId>
<version>2.12.4</version>
<configuration>
	<skipTests>true</skipTests>
</configuration>
</plugin>

http://localhost:8888/services/users/register
{"user_name":"jeffyyang","email":"jeffyyang@sina.com","email":"jeffyyang@sina.com","mobile":"13376069091","password":"123456"}