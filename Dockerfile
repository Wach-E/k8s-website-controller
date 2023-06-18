FROM scratch
LABEL marko.luksa@gmail.com Wach
ADD website-controller /
ADD deployment-template.json /
ADD service-template.json /
CMD ["/website-controller"]
