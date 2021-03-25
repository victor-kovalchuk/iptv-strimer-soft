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


void error(const char *msg) { perror(msg); exit(0); }

int main(void) {
  const char * host = "172.17.166.15";
  const int port = 8086;
  char message[1024], in_buf[512];
  int total;
  int sockfd = 0;
  struct sockaddr_in serv_addr;
  memset(&serv_addr, '0', sizeof(serv_addr));
  serv_addr.sin_family = AF_INET;
  serv_addr.sin_port = htons(port);
  if(inet_pton(AF_INET, host, &serv_addr.sin_addr)<=0) { error("\ninet_pton error occured.\n"); }

  while (fgets(in_buf,1024,stdin)) {
/*
Example string:
ntv:udp_param,tp_fr=11785,pnr=1303,pr_name=Match!-Igra scrambled=0,bitrate=2713,pes_errors=0,cc_errors=0
*/

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
/*
in_buf - database name - <ntv>
pch+1 - request body - <udp_param,tp_fr=11785,pnr=1303,pr_name=Match!-Igra scrambled=0,bitrate=2713,pes_errors=0,cc_errors=0>
*/

    if((sockfd = socket(AF_INET, SOCK_STREAM, 0)) < 0) {
      printf("\n Error : Could not create socket <%s>\n", in_buf);
      continue;
    }
    if( connect(sockfd, (struct sockaddr *)&serv_addr, sizeof(serv_addr)) < 0) {
      printf("\n Error : Connect Failed <%s>\n", in_buf);
      continue;
    }
    sprintf(message,"POST /write?db=%s HTTP/1.1\nHost: %s\nContent-Length: %d\n\n%s",in_buf,host,(int)(strlen(pch+1)),pch+1);
    total=strlen(message);
    write(sockfd,message,total);
    close(sockfd);
  }
  return 0;
}

