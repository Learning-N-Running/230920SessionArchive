const hre = require("hardhat");

async function deploymain() {
  const GenesisNFT = await hre.ethers.getContractFactory("GenesisNFT");
  const genesisNFT = await GenesisNFT.deploy();
  await genesisNFT.deployed();
  console.log("GenesisNFT deployed to:", genesisNFT.address);
}

deploymain()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });

//Sepolia
///GenesisNFT deployed to: 0xf4b841cd4A3DB1d02fA1aF89E3A051e30dcCdEf2

//polygon
//GenesisNFT deployed to: 0xCD5eF94f587A114af7B24a6310016Db3dd3d5B1B
