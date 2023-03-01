/**
 * Generated file - DO NOT EDIT
 */
import { ethers, artifacts, network } from "hardhat";
import { BigNumber } from "ethers";
import { expect } from "chai";
import { loadFixture, time, impersonateAccount, setBalance } from "@nomicfoundation/hardhat-network-helpers";
import "@nomicfoundation/hardhat-chai-matchers";

describe("ERC1967ProxyHarness::transfer(address,uint256) - reverted", async () => {
  let acct0xf39f,
    erc1967proxyHarness0xcf7e,
    makeWorldPeace0x5fbd,
    makeWorldPeaceV20xe7f1,
    makeWorldPeaceV30x9fe4,
    erc1967proxyHarness0xcf7eMakeWorldPeaceV2,
    erc1967proxyHarness0xcf7eMakeWorldPeaceV3;

  beforeEach(async () => {
    await network.provider.send("hardhat_reset");
    await fixture();
  });

  it("0x441034", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x3f7431

    erc1967proxyHarness0xcf7eMakeWorldPeaceV3 = await ethers.getContractAt("MakeWorldPeaceV3", erc1967proxyHarness0xcf7e.address);
    await expect(erc1967proxyHarness0xcf7eMakeWorldPeaceV3.transfer(ethers.constants.AddressZero, 0)).to.be.revertedWith(
      "ERC20: transfer to the zero address"
    );
  });

  it("0x440fcd", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x3f620b

    erc1967proxyHarness0xcf7eMakeWorldPeaceV3 = await ethers.getContractAt("MakeWorldPeaceV3", erc1967proxyHarness0xcf7e.address);
    await expect(
      acct0xf39f.sendTransaction({
        to: erc1967proxyHarness0xcf7e.address,
        value: 0x11e19e0c9bab2408004n,
        data: "0xa9059cbb0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      })
    ).to.be.revertedWithoutReason(/* value transfer to nonpayable call: `transfer(address,uint256)` */);
  });

  it("0x440d6c", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x41cbed

    erc1967proxyHarness0xcf7eMakeWorldPeaceV3 = await ethers.getContractAt("MakeWorldPeaceV3", erc1967proxyHarness0xcf7e.address);
    await expect(
      erc1967proxyHarness0xcf7eMakeWorldPeaceV3.transfer("0x0100000000000000000000000000000000000000", 0x90b9d141774cdc3ffd0000n)
    ).to.be.revertedWith("ERC20: transfer amount exceeds balance");
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
