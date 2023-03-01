/**
 * Generated file - DO NOT EDIT
 */
import { ethers, artifacts, network } from "hardhat";
import { BigNumber } from "ethers";
import { expect } from "chai";
import { loadFixture, time, impersonateAccount, setBalance } from "@nomicfoundation/hardhat-network-helpers";
import "@nomicfoundation/hardhat-chai-matchers";

describe("ERC1967ProxyHarness::transferFrom(address,address,uint256) - reverted", async () => {
  let makeWorldPeace0x5fbd, acct0xf39f, erc1967proxyHarness0xe7f1, erc1967proxyHarness0xe7f1MakeWorldPeace;

  beforeEach(async () => {
    await network.provider.send("hardhat_reset");
    await fixture();
  });

  it("0x3869ab", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x384d8b

    erc1967proxyHarness0xe7f1MakeWorldPeace = await ethers.getContractAt("MakeWorldPeace", erc1967proxyHarness0xe7f1.address);
    await expect(
      erc1967proxyHarness0xe7f1MakeWorldPeace.transferFrom("0x0100000000000000000000000000000000000000", ethers.constants.AddressZero, 0)
    ).to.be.revertedWith("ERC20: transfer to the zero address");
  });

  it("0x386966", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x3804f2

    erc1967proxyHarness0xe7f1MakeWorldPeace = await ethers.getContractAt("MakeWorldPeace", erc1967proxyHarness0xe7f1.address);
    await expect(
      acct0xf39f.sendTransaction({
        to: erc1967proxyHarness0xe7f1.address,
        value: 0x11e19e0c9bab2400110n,
        data: "0x23b872dd0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      })
    ).to.be.revertedWithoutReason(/* value transfer to nonpayable call: `transferFrom(address,address,uint256)` */);
  });

  it("0x386955", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x3851fa

    erc1967proxyHarness0xe7f1MakeWorldPeace = await ethers.getContractAt("MakeWorldPeace", erc1967proxyHarness0xe7f1.address);
    await expect(
      erc1967proxyHarness0xe7f1MakeWorldPeace.transferFrom(ethers.constants.AddressZero, ethers.constants.AddressZero, 0)
    ).to.be.revertedWith("ERC20: approve from the zero address");
  });

  it("0x386867", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x379e18

    erc1967proxyHarness0xe7f1MakeWorldPeace = await ethers.getContractAt("MakeWorldPeace", erc1967proxyHarness0xe7f1.address);
    await expect(
      erc1967proxyHarness0xe7f1MakeWorldPeace.transferFrom(
        ethers.constants.AddressZero,
        ethers.constants.AddressZero,
        0x101010101010101010101010101010101010101010101010101010101010101n
      )
    ).to.be.revertedWith("ERC20: insufficient allowance");
  });

  async function fixture() {
    acct0xf39f = await ethers.getSigner("0xf39fd6e51aad88f6f4ce6ab8827279cfffb92266");
    await setBalance(acct0xf39f.address, 0x21e19e0c9bab2400000n);

    makeWorldPeace0x5fbd = await ethers.deployContract("MakeWorldPeace");

    erc1967proxyHarness0xe7f1 = await ethers.deployContract("ERC1967ProxyHarness", [makeWorldPeace0x5fbd.address, "0x8129fc1c"]);
  }
});
