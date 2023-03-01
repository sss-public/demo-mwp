/**
 * Generated file - DO NOT EDIT
 */
import { ethers, artifacts, network } from "hardhat";
import { BigNumber } from "ethers";
import { expect } from "chai";
import { loadFixture, time, impersonateAccount, setBalance } from "@nomicfoundation/hardhat-network-helpers";
import "@nomicfoundation/hardhat-chai-matchers";

describe("ERC1967ProxyHarness::upgradeTo(address) - reverted", async () => {
  let acct0xf39f, erc1967proxyHarness0xe7f1, makeWorldPeace0x5fbd, erc1967proxyHarness0xe7f1MakeWorldPeace;

  beforeEach(async () => {
    await network.provider.send("hardhat_reset");
    await fixture();
  });

  it("0x386c22", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x37de51

    erc1967proxyHarness0xe7f1MakeWorldPeace = await ethers.getContractAt("MakeWorldPeace", erc1967proxyHarness0xe7f1.address);
    await expect(erc1967proxyHarness0xe7f1MakeWorldPeace.upgradeTo(acct0xf39f.address)).to.be.revertedWithoutReason();
  });

  it("0x386bf0", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x377167

    erc1967proxyHarness0xe7f1MakeWorldPeace = await ethers.getContractAt("MakeWorldPeace", erc1967proxyHarness0xe7f1.address);
    await expect(erc1967proxyHarness0xe7f1MakeWorldPeace.upgradeTo(ethers.constants.AddressZero)).to.be.revertedWithoutReason();
  });

  it("0x386b54", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x3814e7

    erc1967proxyHarness0xe7f1MakeWorldPeace = await ethers.getContractAt("MakeWorldPeace", erc1967proxyHarness0xe7f1.address);
    await expect(
      erc1967proxyHarness0xe7f1MakeWorldPeace.upgradeTo("0x0000000000000000000000000000000000000001")
    ).to.be.revertedWithoutReason();
  });

  it("0x386950", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x37cb87

    erc1967proxyHarness0xe7f1MakeWorldPeace = await ethers.getContractAt("MakeWorldPeace", erc1967proxyHarness0xe7f1.address);
    await expect(erc1967proxyHarness0xe7f1MakeWorldPeace.upgradeTo(erc1967proxyHarness0xe7f1.address)).to.be.revertedWith(
      "ERC1967Upgrade: new implementation is not UUPS"
    );
  });

  it("0x386928", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x383ec6

    erc1967proxyHarness0xe7f1MakeWorldPeace = await ethers.getContractAt("MakeWorldPeace", erc1967proxyHarness0xe7f1.address);
    await expect(
      acct0xf39f.sendTransaction({
        to: erc1967proxyHarness0xe7f1.address,
        value: 0x11e19e0c9bab2400110n,
        data: "0x3659cfe60000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      })
    ).to.be.revertedWithoutReason(/* value transfer to nonpayable call: `upgradeTo(address)` */);
  });

  it("0x3868b1", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x384ad1

    erc1967proxyHarness0xe7f1MakeWorldPeace = await ethers.getContractAt("MakeWorldPeace", erc1967proxyHarness0xe7f1.address);
    await expect(
      erc1967proxyHarness0xe7f1MakeWorldPeace.upgradeTo("0x000000000000000000000000000000000000018a")
    ).to.be.revertedWithoutReason();
  });

  it.skip("0x386830", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x3771f9

    erc1967proxyHarness0xe7f1MakeWorldPeace = await ethers.getContractAt("MakeWorldPeace", erc1967proxyHarness0xe7f1.address);
    await expect(
      erc1967proxyHarness0xe7f1MakeWorldPeace.upgradeTo("0x0000000000000000000000000000000000000003")
    ).to.be.revertedWithoutReason();
  });

  async function fixture() {
    acct0xf39f = await ethers.getSigner("0xf39fd6e51aad88f6f4ce6ab8827279cfffb92266");
    await setBalance(acct0xf39f.address, 0x21e19e0c9bab2400000n);

    makeWorldPeace0x5fbd = await ethers.deployContract("MakeWorldPeace");

    erc1967proxyHarness0xe7f1 = await ethers.deployContract("ERC1967ProxyHarness", [makeWorldPeace0x5fbd.address, "0x8129fc1c"]);
  }
});
