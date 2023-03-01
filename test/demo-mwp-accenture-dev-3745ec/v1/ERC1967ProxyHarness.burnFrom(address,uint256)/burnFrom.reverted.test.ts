/**
 * Generated file - DO NOT EDIT
 */
import { ethers, artifacts, network } from "hardhat";
import { BigNumber } from "ethers";
import { expect } from "chai";
import { loadFixture, time, impersonateAccount, setBalance } from "@nomicfoundation/hardhat-network-helpers";
import "@nomicfoundation/hardhat-chai-matchers";

describe("ERC1967ProxyHarness::burnFrom(address,uint256) - reverted", async () => {
  let acct0xf39f, erc1967proxyHarness0xe7f1, makeWorldPeace0x5fbd, erc1967proxyHarness0xe7f1MakeWorldPeace;

  beforeEach(async () => {
    await network.provider.send("hardhat_reset");
    await fixture();
  });

  it("0x386baf", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x37f3cb

    erc1967proxyHarness0xe7f1MakeWorldPeace = await ethers.getContractAt("MakeWorldPeace", erc1967proxyHarness0xe7f1.address);
    await expect(
      acct0xf39f.sendTransaction({
        to: erc1967proxyHarness0xe7f1.address,
        value: 0x11e19e0c9bab2400110n,
        data: "0x79cc67900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      })
    ).to.be.revertedWithoutReason(/* value transfer to nonpayable call: `burnFrom(address,uint256)` */);
  });

  it("0x386a0f", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x37e5df

    erc1967proxyHarness0xe7f1MakeWorldPeace = await ethers.getContractAt("MakeWorldPeace", erc1967proxyHarness0xe7f1.address);
    await expect(
      erc1967proxyHarness0xe7f1MakeWorldPeace.burnFrom(
        ethers.constants.AddressZero,
        0x101010101010101010101010101010101010101010101010101010101010101n
      )
    ).to.be.revertedWith("ERC20: insufficient allowance");
  });

  it("0x3869cf", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x37825e

    erc1967proxyHarness0xe7f1MakeWorldPeace = await ethers.getContractAt("MakeWorldPeace", erc1967proxyHarness0xe7f1.address);
    await expect(erc1967proxyHarness0xe7f1MakeWorldPeace.burnFrom(ethers.constants.AddressZero, 0)).to.be.revertedWith(
      "ERC20: approve from the zero address"
    );
  });

  async function fixture() {
    acct0xf39f = await ethers.getSigner("0xf39fd6e51aad88f6f4ce6ab8827279cfffb92266");
    await setBalance(acct0xf39f.address, 0x21e19e0c9bab2400000n);

    makeWorldPeace0x5fbd = await ethers.deployContract("MakeWorldPeace");

    erc1967proxyHarness0xe7f1 = await ethers.deployContract("ERC1967ProxyHarness", [makeWorldPeace0x5fbd.address, "0x8129fc1c"]);
  }
});
