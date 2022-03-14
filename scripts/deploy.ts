
import { ethers } from "hardhat";

async function main() {
  const tokenURI = "https://ipfs.io/ipfs/<Ipfs CID pointer>" 
  const NFTawait = await ethers.getContractFactory("newNFT");
  const NFTToken = await NFTawait.deploy();

  await NFTToken.deployed();
  await NFTToken.createNFT(tokenURI, "Wallet Address");
  // await NFTToken.tokenURI(1);
  console.log("NFT deployed to:", NFTToken.address);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});

