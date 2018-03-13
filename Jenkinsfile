// Powered by Infostretch 

timestamps {

node () {

	stage ('t1 - Checkout') {
 	 checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'Java_dummy', url: 'https://github.com/Java-dummy/java_dummy01.git']]]) 
	}
	stage ('t1 - Build') {
 			// Ant build step
	withEnv(["PATH+ANT=${tool 'ant 1.10'}/bin"]) { 
 			if(isUnix()) {
 				sh "ant -buildfile development/build.xml " 
			} else { 
 				bat "ant -buildfile development/build.xml " 
			} 
 		} 
	}
	stage ('t2 - Build') {
 			// Shell build step
sh """ 
T=$(cat ../t1/hello.txt)
echo "$T" 
 """ 
	}
}
}