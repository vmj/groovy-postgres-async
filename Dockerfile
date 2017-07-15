FROM groovy:2.4-jre8-alpine
# /home/groovy/.groovy is the default grape root,
# but that does not stick.
RUN grape -Dgrape.root=/home/groovy install com.github.alaisi.pgasync postgres-async-driver 0.6
