# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

coins = [
  {
    short_description: "Bitcoin",
    long_description: "Launched in 2009, Bitcoin is the world's largest cryptocurrency by market capitalization. Unlike fiat currency, Bitcoin is created, distributed, traded, and stored using a decentralized ledger system known as a blockchain.",
    acronym: "BTC",
    url_image: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Bitcoin.svg/1200px-Bitcoin.svg.png",
    active: true,
    mining_type_id: 1
  },
  {
    short_description: "Dogecoin",
    long_description: "Dogecoin is a cryptocurrency, like Bitcoin or Ethereum—although it's a very different animal than either of these popular coins. Dogecoin was originally created at least in part as a lighthearted joke for crypto enthusiasts, and took its name from a once-popular meme.",
    acronym: "DOGE",
    url_image: "https://upload.wikimedia.org/wikipedia/pt/d/d0/Dogecoin_Logo.png",
    active: true
  },
  {
    short_description: "Ethereum",
    long_description: "Ethereum is a decentralized blockchain platform that establishes a peer-to-peer network that securely executes and verifies application code, called smart contracts. Smart contracts allow participants to transact with each other without a trusted central authority.",
    acronym: "ETH",
    url_image: "https://img.uxwing.com/wp-content/themes/uxwing/download/brands-social-media/ethereum-eth-icon.png",
    active: true,
    mining_type_id: 1
  },
  {
    short_description: "Litecoin",
    long_description: "Litecoin is a peer-to-peer cryptocurrency that enables instant, near-zero cost payments to anyone in the world. It is an open-source project released in 2011 and is often considered as the silver to Bitcoin's gold.",
    acronym: "LTC",
    url_image: "https://cryptologos.cc/logos/litecoin-ltc-logo.png?v=002",
    active: true
  },
  {
    short_description: "Cardano",
    long_description: "Cardano is a blockchain platform that aims to provide a more secure and sustainable infrastructure for the development of decentralized applications and smart contracts. It emphasizes academic research and peer-reviewed methodologies.",
    acronym: "ADA",
    url_image: "https://cryptologos.cc/logos/cardano-ada-logo.png",
    active: true
  },
  {
    short_description: "Polkadot",
    long_description: "Polkadot is a multi-chain network that enables different blockchains to interoperate and share information in a secure and scalable way. It aims to create a decentralized web where independent blockchains can seamlessly connect and interact.",
    acronym: "DOT",
    url_image: "https://cryptologos.cc/logos/polkadot-new-dot-logo.png",
    active: true
  },
  {
    short_description: "Ripple",
    long_description: "Ripple is a digital payment protocol and cryptocurrency that facilitates fast, low-cost international money transfers. It aims to provide a seamless experience for sending money globally, leveraging blockchain technology and a consensus algorithm.",
    acronym: "XRP",
    url_image: "https://cryptologos.cc/logos/xrp-xrp-logo.png",
    active: true
  },
  {
    short_description: "Binance Coin",
    long_description: "Binance Coin is a digital currency issued by the Binance cryptocurrency exchange. It can be used to pay for transaction fees on the Binance exchange or to participate in token sales offered on the Binance Launchpad.",
    acronym: "BNB",
    url_image: "https://cryptologos.cc/logos/binance-coin-bnb-logo.png?v=002",
    active: true
  }
]

coins.each do |coin|
  Coin.find_or_create_by(coin)
end