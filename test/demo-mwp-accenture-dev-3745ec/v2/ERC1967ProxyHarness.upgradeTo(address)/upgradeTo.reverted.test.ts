/**
 * Generated file - DO NOT EDIT
 */
import { ethers, artifacts, network } from "hardhat";
import { BigNumber } from "ethers";
import { expect } from "chai";
import { loadFixture, time, impersonateAccount, setBalance } from "@nomicfoundation/hardhat-network-helpers";
import "@nomicfoundation/hardhat-chai-matchers";

describe("ERC1967ProxyHarness::upgradeTo(address) - reverted", async () => {
  let makeWorldPeaceV20xe7f1,
    acct0xf39f,
    erc1967proxyHarness0x9fe4,
    makeWorldPeace0x5fbd,
    erc1967proxyHarness0x9fe4MakeWorldPeaceV2,
    erc1967proxyHarness0x9fe4MakeWorldPeace;

  beforeEach(async () => {
    await network.provider.send("hardhat_reset");
    await fixture();
  });

  it.skip("0x3cb2ca", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x3bed7a

    erc1967proxyHarness0x9fe4MakeWorldPeaceV2 = await ethers.getContractAt("MakeWorldPeaceV2", erc1967proxyHarness0x9fe4.address);
    await expect(
      erc1967proxyHarness0x9fe4MakeWorldPeaceV2.upgradeTo("0x0000000000000000000000000000000000000003")
    ).to.be.revertedWithoutReason();
  });

  it("0x3cb26a", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x3c134a

    erc1967proxyHarness0x9fe4MakeWorldPeaceV2 = await ethers.getContractAt("MakeWorldPeaceV2", erc1967proxyHarness0x9fe4.address);
    await expect(erc1967proxyHarness0x9fe4MakeWorldPeaceV2.upgradeTo(ethers.constants.AddressZero)).to.be.revertedWithoutReason();
  });

  it("0x3cb1b3", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x3bfb1b

    erc1967proxyHarness0x9fe4MakeWorldPeaceV2 = await ethers.getContractAt("MakeWorldPeaceV2", erc1967proxyHarness0x9fe4.address);
    await expect(
      erc1967proxyHarness0x9fe4MakeWorldPeaceV2.upgradeTo("0x0000000000000000000000000000000000000001")
    ).to.be.revertedWithoutReason();
  });

  it("0x3cb169", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x39cf22

    erc1967proxyHarness0x9fe4MakeWorldPeaceV2 = await ethers.getContractAt("MakeWorldPeaceV2", erc1967proxyHarness0x9fe4.address);
    await expect(
      acct0xf39f.sendTransaction({
        to: erc1967proxyHarness0x9fe4.address,
        value: 0x11e19e0c9bab2408000n,
        data: "0x3659cfe60000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      })
    ).to.be.revertedWithoutReason(/* value transfer to nonpayable call: `upgradeTo(address)` */);
  });

  it("0x3cb07e", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x3b8df0

    erc1967proxyHarness0x9fe4MakeWorldPeaceV2 = await ethers.getContractAt("MakeWorldPeaceV2", erc1967proxyHarness0x9fe4.address);
    await expect(erc1967proxyHarness0x9fe4MakeWorldPeaceV2.upgradeTo(erc1967proxyHarness0x9fe4.address)).to.be.revertedWith(
      "ERC1967Upgrade: new implementation is not UUPS"
    );
  });

  it("0x3cb05c", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x3aa660

    erc1967proxyHarness0x9fe4MakeWorldPeaceV2 = await ethers.getContractAt("MakeWorldPeaceV2", erc1967proxyHarness0x9fe4.address);
    await expect(
      erc1967proxyHarness0x9fe4MakeWorldPeaceV2.upgradeTo("0x000000000000000000000000000000000000011a")
    ).to.be.revertedWithoutReason();
  });

  it("0x3caf5b", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x3b1046

    erc1967proxyHarness0x9fe4MakeWorldPeaceV2 = await ethers.getContractAt("MakeWorldPeaceV2", erc1967proxyHarness0x9fe4.address);
    await expect(erc1967proxyHarness0x9fe4MakeWorldPeaceV2.upgradeTo(acct0xf39f.address)).to.be.revertedWithoutReason();
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
