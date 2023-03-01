/**
 * Generated file - DO NOT EDIT
 */
import { ethers, artifacts, network } from "hardhat";
import { BigNumber } from "ethers";
import { expect } from "chai";
import { loadFixture, time, impersonateAccount, setBalance } from "@nomicfoundation/hardhat-network-helpers";
import "@nomicfoundation/hardhat-chai-matchers";

describe("ERC1967ProxyHarness::burn_supply(uint256)", async () => {
  let makeWorldPeace0x5fbd, acct0xf39f, erc1967proxyHarness0xe7f1, erc1967proxyHarness0xe7f1MakeWorldPeace;

  beforeEach(async () => {
    await network.provider.send("hardhat_reset");
    await fixture();
  });

  it("0x386bef", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x38180e

    erc1967proxyHarness0xe7f1MakeWorldPeace = await ethers.getContractAt("MakeWorldPeace", erc1967proxyHarness0xe7f1.address);
    await erc1967proxyHarness0xe7f1MakeWorldPeace.burn_supply(0);

    expect(await makeWorldPeace0x5fbd.allowance(ethers.constants.AddressZero, ethers.constants.AddressZero)).to.equal(0);
    expect(await makeWorldPeace0x5fbd.balanceOf(ethers.constants.AddressZero)).to.equal(0);
    expect(await makeWorldPeace0x5fbd.decimals()).to.equal(18);
    expect(await makeWorldPeace0x5fbd.name()).to.equal("");
    expect(await makeWorldPeace0x5fbd.owner()).to.equal(ethers.constants.AddressZero);
    expect(await makeWorldPeace0x5fbd.paused()).to.equal(false);
    expect(await makeWorldPeace0x5fbd.proxiableUUID()).to.equal("0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc");
    expect(await makeWorldPeace0x5fbd.symbol()).to.equal("");
    expect(await makeWorldPeace0x5fbd.totalSupply()).to.equal(0);
  });

  it("0x3869e2", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x384822

    erc1967proxyHarness0xe7f1MakeWorldPeace = await ethers.getContractAt("MakeWorldPeace", erc1967proxyHarness0xe7f1.address);
    await erc1967proxyHarness0xe7f1MakeWorldPeace.burn_supply(0x10b9d141774cdc3ffc0000n);

    expect(await makeWorldPeace0x5fbd.allowance(ethers.constants.AddressZero, ethers.constants.AddressZero)).to.equal(0);
    expect(await makeWorldPeace0x5fbd.balanceOf(ethers.constants.AddressZero)).to.equal(0);
    expect(await makeWorldPeace0x5fbd.decimals()).to.equal(18);
    expect(await makeWorldPeace0x5fbd.name()).to.equal("");
    expect(await makeWorldPeace0x5fbd.owner()).to.equal(ethers.constants.AddressZero);
    expect(await makeWorldPeace0x5fbd.paused()).to.equal(false);
    expect(await makeWorldPeace0x5fbd.proxiableUUID()).to.equal("0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc");
    expect(await makeWorldPeace0x5fbd.symbol()).to.equal("");
    expect(await makeWorldPeace0x5fbd.totalSupply()).to.equal(0);
  });

  it("0x3868d5", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x37ef3a

    erc1967proxyHarness0xe7f1MakeWorldPeace = await ethers.getContractAt("MakeWorldPeace", erc1967proxyHarness0xe7f1.address);
    await erc1967proxyHarness0xe7f1MakeWorldPeace.burn_supply(0xfffffffffffffffffffffn);

    expect(await makeWorldPeace0x5fbd.allowance(ethers.constants.AddressZero, ethers.constants.AddressZero)).to.equal(0);
    expect(await makeWorldPeace0x5fbd.balanceOf(ethers.constants.AddressZero)).to.equal(0);
    expect(await makeWorldPeace0x5fbd.decimals()).to.equal(18);
    expect(await makeWorldPeace0x5fbd.name()).to.equal("");
    expect(await makeWorldPeace0x5fbd.owner()).to.equal(ethers.constants.AddressZero);
    expect(await makeWorldPeace0x5fbd.paused()).to.equal(false);
    expect(await makeWorldPeace0x5fbd.proxiableUUID()).to.equal("0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc");
    expect(await makeWorldPeace0x5fbd.symbol()).to.equal("");
    expect(await makeWorldPeace0x5fbd.totalSupply()).to.equal(0);
  });

  async function fixture() {
    acct0xf39f = await ethers.getSigner("0xf39fd6e51aad88f6f4ce6ab8827279cfffb92266");
    await setBalance(acct0xf39f.address, 0x21e19e0c9bab2400000n);

    makeWorldPeace0x5fbd = await ethers.deployContract("MakeWorldPeace");

    erc1967proxyHarness0xe7f1 = await ethers.deployContract("ERC1967ProxyHarness", [makeWorldPeace0x5fbd.address, "0x8129fc1c"]);
  }
});
