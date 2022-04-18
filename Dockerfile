FROM clojure:openjdk-19-lein-slim-bullseye

RUN echo '{:user {:plugins [[lein-try "0.4.3"]]}}' > ~/.lein/profiles.clj

ENTRYPOINT [ "lein", "try" ]
