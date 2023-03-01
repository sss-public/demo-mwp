/**
 * Generated file - DO NOT EDIT
 */
import { ethers, artifacts, network } from "hardhat";
import { BigNumber } from "ethers";
import { expect } from "chai";
import { loadFixture, time, impersonateAccount, setBalance } from "@nomicfoundation/hardhat-network-helpers";
import "@nomicfoundation/hardhat-chai-matchers";

describe("ERC1967ProxyHarness::upgradeTo(address) - reverted", async () => {
  let makeWorldPeace0x5fbd,
    makeWorldPeaceV20xe7f1,
    makeWorldPeaceV30x9fe4,
    acct0xf39f,
    erc1967proxyHarness0xcf7e,
    erc1967proxyHarness0xcf7eMakeWorldPeaceV3,
    erc1967proxyHarness0xcf7eMakeWorldPeaceV2;

  beforeEach(async () => {
    await network.provider.send("hardhat_reset");
    await fixture();
  });

  it("0x4410c6", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x40ac7e

    erc1967proxyHarness0xcf7eMakeWorldPeaceV3 = await ethers.getContractAt("MakeWorldPeaceV3", erc1967proxyHarness0xcf7e.address);
    await expect(
      acct0xf39f.sendTransaction({
        to: erc1967proxyHarness0xcf7e.address,
        value: 0x11e19e0c9bab2408004n,
        data: "0x3659cfe60000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      })
    ).to.be.revertedWithoutReason(/* value transfer to nonpayable call: `upgradeTo(address)` */);
  });

  it("0x44105a", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x3f986b

    erc1967proxyHarness0xcf7eMakeWorldPeaceV3 = await ethers.getContractAt("MakeWorldPeaceV3", erc1967proxyHarness0xcf7e.address);
    await expect(erc1967proxyHarness0xcf7eMakeWorldPeaceV3.upgradeTo(acct0xf39f.address)).to.be.revertedWithoutReason();
  });

  it("0x441030", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x40891b

    erc1967proxyHarness0xcf7eMakeWorldPeaceV3 = await ethers.getContractAt("MakeWorldPeaceV3", erc1967proxyHarness0xcf7e.address);
    await expect(erc1967proxyHarness0xcf7eMakeWorldPeaceV3.upgradeTo(erc1967proxyHarness0xcf7e.address)).to.be.revertedWith(
      "ERC1967Upgrade: new implementation is not UUPS"
    );
  });

  it("0x440ecf", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x4198c5

    erc1967proxyHarness0xcf7eMakeWorldPeaceV3 = await ethers.getContractAt("MakeWorldPeaceV3", erc1967proxyHarness0xcf7e.address);
    await expect(erc1967proxyHarness0xcf7eMakeWorldPeaceV3.upgradeTo(ethers.constants.AddressZero)).to.be.revertedWithoutReason();
  });

  it("0x440e18", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x40af9b

    erc1967proxyHarness0xcf7eMakeWorldPeaceV3 = await ethers.getContractAt("MakeWorldPeaceV3", erc1967proxyHarness0xcf7e.address);
    await expect(
      erc1967proxyHarness0xcf7eMakeWorldPeaceV3.upgradeTo("0x000000000000000000000000000000000000001a")
    ).to.be.revertedWithoutReason();
  });

  it.skip("0x440df3", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x427a8c

    erc1967proxyHarness0xcf7eMakeWorldPeaceV3 = await ethers.getContractAt("MakeWorldPeaceV3", erc1967proxyHarness0xcf7e.address);
    await expect(
      erc1967proxyHarness0xcf7eMakeWorldPeaceV3.upgradeTo("0x0000000000000000000000000000000000000003")
    ).to.be.revertedWithoutReason();
  });

  it("0x440c42", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x3f15c5

    erc1967proxyHarness0xcf7eMakeWorldPeaceV3 = await ethers.getContractAt("MakeWorldPeaceV3", erc1967proxyHarness0xcf7e.address);
    await expect(
      erc1967proxyHarness0xcf7eMakeWorldPeaceV3.upgradeTo("0x0000000000000000000000000000000000000001")
    ).to.be.revertedWithoutReason();
  });

  async function fixture() {
    acct0xf39f = await ethers.getSigner("0xf39fd6e51aad88f6f4ce6ab8827279cfffb92266");
    await setBalance(acct0xf39f.address, 0x21e19e0c9bab2400000n);

    makeWorldPeace0x5fbd = await ethers.deployContract("MakeWorldPeace");

    makeWorldPeaceV20xe7f1 = await ethers.deployContract("MakeWorldPeaceV2");

    makeWorldPeaceV30x9fe4 = await ethers.deployContract("MakeWorldPeaceV3");

    erc1967proxyHarness0xcf7e = await ethers.deployContract("ERC1967ProxyHarness", [makeWorldPeace0x5fbd.address, "0x8129fc1c"]);

    await acct0xf39f.sendTransaction({
      to: erc1967proxyHarness0xcf7e.address,
      value: 0,
      data: "0x4f1ef286000000000000000000000000e7f1725e7734ce288f8367e1bb143e90bb3f051200000000000000000000000000000000000000000000000000000000000000400000000000000000000000000000000000000000000000000000000000000004cc01053e00000000000000000000000000000000000000000000000000000000",
    });

    erc1967proxyHarness0xcf7eMakeWorldPeaceV2 = await ethers.getContractAt("MakeWorldPeaceV2", erc1967proxyHarness0xcf7e.address);
    await erc1967proxyHarness0xcf7eMakeWorldPeaceV2.upgradeTo(makeWorldPeaceV30x9fe4.address);
  }
});
