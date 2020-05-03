FROM golang:latest
WORKDIR /app
COPY 	myGo2HWmoms_master ./
EXPOSE 9090
CMD ["./myGo2HWmoms_master"]