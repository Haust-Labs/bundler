FROM node:20

WORKDIR /usr/src/app

COPY . .

RUN yarn install

RUN yarn preprocess

CMD ["yarn", "run", "bundler", "--unsafe", "--network", "https://rpc-testnet.haust.app/", "--mnemonic", "./localconfig/mnemonic.txt"]
