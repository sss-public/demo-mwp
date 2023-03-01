/**
 * Generated file - DO NOT EDIT
 */
import { ethers, artifacts, network } from "hardhat";
import { BigNumber } from "ethers";
import { expect } from "chai";
import { loadFixture, time, impersonateAccount, setBalance } from "@nomicfoundation/hardhat-network-helpers";
import "@nomicfoundation/hardhat-chai-matchers";

describe("ERC1967ProxyHarness::transferOwnership(address) - reverted", async () => {
  let acct0xf39f, erc1967proxyHarness0xe7f1, makeWorldPeace0x5fbd, erc1967proxyHarness0xe7f1MakeWorldPeace;

  beforeEach(async () => {
    await network.provider.send("hardhat_reset");
    await fixture();
  });

  it("0x386978", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x37ca26

    erc1967proxyHarness0xe7f1MakeWorldPeace = await ethers.getContractAt("MakeWorldPeace", erc1967proxyHarness0xe7f1.address);
    await expect(
      acct0xf39f.sendTransaction({
        to: erc1967proxyHarness0xe7f1.address,
        value: 0x11e19e0c9bab2400110n,
        data: "0xf2fde38b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      })
    ).to.be.revertedWithoutReason(/* value transfer to nonpayable call: `transferOwnership(address)` */);
  });

  it("0x38686a", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x37d47e

    erc1967proxyHarness0xe7f1MakeWorldPeace = await ethers.getContractAt("MakeWorldPeace", erc1967proxyHarness0xe7f1.address);
    await expect(erc1967proxyHarness0xe7f1MakeWorldPeace.transferOwnership(ethers.constants.AddressZero)).to.be.revertedWith(
      "Ownable: new owner is the zero address"
    );
  });

  async function fixture() {
    acct0xf39f = await ethers.getSigner("0xf39fd6e51aad88f6f4ce6ab8827279cfffb92266");
    await setBalance(acct0xf39f.address, 0x21e19e0c9bab2400000n);

    makeWorldPeace0x5fbd = await ethers.deployContract("MakeWorldPeace");

    erc1967proxyHarness0xe7f1 = await ethers.deployContract("ERC1967ProxyHarness", [makeWorldPeace0x5fbd.address, "0x8129fc1c"]);
  }
});
