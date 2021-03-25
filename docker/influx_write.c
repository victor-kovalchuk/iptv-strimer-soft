#include <stdio.h>
#include <curl/curl.h>
#include <string.h>
#include <stdlib.h>

int main(int argc, char **argv) {
  char in_buf[1024];
  char url[256];
  CURL *curl;
  CURLcode res;
  while (fgets(in_buf,1024,stdin)) {
      if (!(strstr(in_buf,"sat_param") || strstr(in_buf,"udp_param"))) {
        printf("%s", in_buf);
      } else {
	char *pch = strstr(in_buf,":");
	if (pch == NULL) {
          fprintf(stderr,"Error - database name not found.\n");
	} else {
	  *pch = 0;
          curl_global_init(CURL_GLOBAL_ALL);
          curl = curl_easy_init();
          if(curl) {
            strcpy(url,"http://172.17.166.15:8086/write?db=");
            strcat(url,in_buf);
            curl_easy_setopt(curl, CURLOPT_URL, url);
            curl_easy_setopt(curl, CURLOPT_POSTFIELDS, pch+1);
            res = curl_easy_perform(curl);
            if(res != CURLE_OK)
              fprintf(stderr, "curl_easy_perform() failed: %s\n", curl_easy_strerror(res));
              curl_easy_cleanup(curl);
          }
          curl_global_cleanup();
        }
      }
    }
  return 0;
}
