#include <stdio.h>
#include <sys/socket.h>
#include <unistd.h>
#include <stdlib.h>
#include <netinet/in.h>
#include <string.h>
int port = 5000;



int main(int argc, char const *argv[]){
    int server_fd, new_socket; long valread;
    struct sockaddr_in address;
    int addrlen = sizeof(address);
    
    char httpHeader[2000] = "HTTP/1.1 200 OK\nContent-Type:text/html\nContent-Length: 10000\n\n <!DOCTYPE HTML><HTML><body><h1>My name is Rishi Awasthi</h1><img src='https://i.ibb.co/xMWZWbD/Whats-App-Image-2022-09-21-at-00-13-41.jpg'/> <h1>Roll Number:102017128</h1><h1>Subgroup:3CS6</h1></body></HTML>";
    // loadConfig();
    // setUpServer(httpHeader);
    printf("Header: %s\n", httpHeader);

    // Creating socket file descriptor
    if ((server_fd = socket(AF_INET, SOCK_STREAM, 0)) == 0)
    {
        perror("In socket");
        exit(EXIT_FAILURE);
    }
    

    address.sin_family = AF_INET;
    address.sin_addr.s_addr = INADDR_ANY;
    address.sin_port = htons(port);
    
    memset(address.sin_zero, '\0', sizeof address.sin_zero);
    
    
    if (bind(server_fd, (struct sockaddr *)&address, sizeof(address))<0)
    {
        perror("In bind");
        exit(EXIT_FAILURE);
    }
    if (listen(server_fd, 10) < 0)
    {
        perror("In listen");
        exit(EXIT_FAILURE);
    }
    while(1)
    {
        printf("\n+++++++ Waiting for new connection ++++++++\n\n");
        if ((new_socket = accept(server_fd, (struct sockaddr *)&address, (socklen_t*)&addrlen))<0)
        {
            perror("In accept");
            exit(EXIT_FAILURE);
        }
        
        char buffer[30000] = {0};
        valread = read( new_socket , buffer, 30000);
        printf("%s\n",buffer );
        write(new_socket , httpHeader , strlen(httpHeader));
        printf("------------------Hello message sent-------------------");
        close(new_socket);
    }
    return 0;
}
