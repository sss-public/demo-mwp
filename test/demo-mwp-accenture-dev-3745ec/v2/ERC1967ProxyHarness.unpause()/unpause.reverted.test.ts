/**
 * Generated file - DO NOT EDIT
 */
import { ethers, artifacts, network } from "hardhat";
import { BigNumber } from "ethers";
import { expect } from "chai";
import { loadFixture, time, impersonateAccount, setBalance } from "@nomicfoundation/hardhat-network-helpers";
import "@nomicfoundation/hardhat-chai-matchers";

describe("ERC1967ProxyHarness::unpause() - reverted", async () => {
  let makeWorldPeaceV20xe7f1,
    acct0xf39f,
    erc1967proxyHarness0x9fe4,
    makeWorldPeace0x5fbd,
    erc1967proxyHarness0x9fe4MakeWorldPeace,
    erc1967proxyHarness0x9fe4MakeWorldPeaceV2;

  beforeEach(async () => {
    await network.provider.send("hardhat_reset");
    await fixture();
  });

  it("0x3cb342", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x3a44be

    erc1967proxyHarness0x9fe4MakeWorldPeaceV2 = await ethers.getContractAt("MakeWorldPeaceV2", erc1967proxyHarness0x9fe4.address);
    await expect(
      acct0xf39f.sendTransaction({
        to: erc1967proxyHarness0x9fe4.address,
        value: 0x11e19e0c9bab2408000n,
        data: "0x3f4ba83a0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      })
    ).to.be.revertedWithoutReason(/* value transfer to nonpayable call: `unpause()` */);
  });

  it("0x3cae5a", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x3b4c2c

    erc1967proxyHarness0x9fe4MakeWorldPeaceV2 = await ethers.getContractAt("MakeWorldPeaceV2", erc1967proxyHarness0x9fe4.address);
    await expect(erc1967proxyHarness0x9fe4MakeWorldPeaceV2.unpause()).to.be.revertedWith("Pausable: not paused");
  });

  async function fixture() {
    acct0xf39f = await ethers.getSigner("0xf39fd6e51aad88f6f4ce6ab8827279cfffb92266");
    await setBalance(acct0xf39f.address, 0x21e19e0c9bab2400000n);

    makeWorldPeace0x5fbd = await ethers.deployContract("MakeWorldPeace");

    makeWorldPeaceV20xe7f1 = await ethers.deployContract("MakeWorldPeaceV2");

    erc1967proxyHarness0x9fe4 = await ethers.deployContract("ERC1967ProxyHarness", [makeWorldPeace0x5fbd.address, "0x8129fc1c"]);

    erc1967proxyHarness0x9fe4MakeWorldPeace = await ethers.getContractAt("MakeWorldPeace", erc1967proxyHarness0x9fe4.address);
    await erc1967proxyHarness0x9fe4MakeWorldPeace.upgradeToAndCall(makeWorldPeaceV20xe7f1.address, "0xcc01053e");
  }
});
