#include <sys/socket.h>
#include <sys/types.h>
#include <netinet/in.h>
#include <netdb.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <arpa/inet.h> 
#include <stdbool.h>


int main(int argc, char ** argv) {
	char host[64];
	strcpy(host,argv[1]);
	const int port = 8086;
	char message[2048], in_buf[2048];
	int total;
	bool influx_is_ready=true, influx_is_ready_old_status;  // Influx database status
	int sockfd;
	struct sockaddr_in serv_addr;

	while (fgets(in_buf,2048,stdin)) {
/*
Example string:
ntv:udp_param,tp_fr=11785,pnr=1303,pr_name=Match!-Igra scrambled=0,bitrate=2713,pes_errors=0,cc_errors=0
*/
		sockfd = 0;
		if (!(strstr(in_buf,"sat_param") || strstr(in_buf,"udp_param"))) {
			printf("%s", in_buf);
			continue;
		}

		char *pch = strstr(in_buf,":");
		if (pch == NULL) {
			printf("Error - database name not found - %s\n",in_buf);
			continue;
		}

		*pch = 0;
		memset(&serv_addr, '0', sizeof(serv_addr));
		serv_addr.sin_family = AF_INET;
		serv_addr.sin_port = htons(port);
		if(inet_pton(AF_INET, host, &serv_addr.sin_addr)<=0) {
			printf("\ninet_pton error occured.\n");
			continue;
		}
/*
in_buf - database name - <ntv>
pch+1 - request body - <udp_param,tp_fr=11785,pnr=1303,pr_name=Match!-Igra scrambled=0,bitrate=2713,pes_errors=0,cc_errors=0>
*/
		if((sockfd = socket(AF_INET, SOCK_STREAM, 0)) < 0) {
			printf("Error opening socket.\n");
			continue;
		}
		influx_is_ready_old_status = influx_is_ready;
		if( connect(sockfd, (struct sockaddr *)&serv_addr, sizeof(serv_addr)) < 0) {
			influx_is_ready = false;
		} else {
			influx_is_ready = true;
		}
		if (influx_is_ready) {
			sprintf(message,"POST /write?db=%s HTTP/1.1\nHost: %s\nContent-Length: %d\n\n%s",in_buf,host,(int)(strlen(pch+1)),pch+1);
			total=strlen(message);
			write(sockfd,message,total);
			if (!influx_is_ready_old_status) {
				printf("\n Success: connection restore.\n");
			}
//			close(sockfd);
		} else {
			if (influx_is_ready_old_status) {
				printf("\n Error: connection loss.\n");
			}
		}
		close(sockfd);
	}	// while
	return 0;
}

