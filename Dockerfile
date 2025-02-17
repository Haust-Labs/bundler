FROM node:20

WORKDIR /usr/src/app

COPY . .

RUN yarn install

RUN yarn preprocess

ENV RPC_URL=""

CMD ["yarn", "run", "bundler", "--unsafe", "--network", "$RPC_URL", "--mnemonic", "./localconfig/mnemonic.txt"]
