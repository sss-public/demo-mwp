/**
 * Generated file - DO NOT EDIT
 */
import { ethers, artifacts, network } from "hardhat";
import { BigNumber } from "ethers";
import { expect } from "chai";
import { loadFixture, time, impersonateAccount, setBalance } from "@nomicfoundation/hardhat-network-helpers";
import "@nomicfoundation/hardhat-chai-matchers";

describe("ERC1967ProxyHarness::decimals()", async () => {
  let erc1967proxyHarness0xcf7e,
    makeWorldPeace0x5fbd,
    makeWorldPeaceV20xe7f1,
    makeWorldPeaceV30x9fe4,
    acct0xf39f,
    erc1967proxyHarness0xcf7eMakeWorldPeaceV3,
    erc1967proxyHarness0xcf7eMakeWorldPeaceV2;

  beforeEach(async () => {
    await network.provider.send("hardhat_reset");
    await fixture();
  });

  it("0x440f77", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x4278d8

    erc1967proxyHarness0xcf7eMakeWorldPeaceV3 = await ethers.getContractAt("MakeWorldPeaceV3", erc1967proxyHarness0xcf7e.address);
    expect(await erc1967proxyHarness0xcf7eMakeWorldPeaceV3.decimals()).to.equal(18);

    expect(await makeWorldPeace0x5fbd.allowance(ethers.constants.AddressZero, ethers.constants.AddressZero)).to.equal(0);
    expect(await makeWorldPeace0x5fbd.balanceOf(ethers.constants.AddressZero)).to.equal(0);
    expect(await makeWorldPeace0x5fbd.decimals()).to.equal(18);
    expect(await makeWorldPeace0x5fbd.name()).to.equal("");
    expect(await makeWorldPeace0x5fbd.owner()).to.equal(ethers.constants.AddressZero);
    expect(await makeWorldPeace0x5fbd.paused()).to.equal(false);
    expect(await makeWorldPeace0x5fbd.proxiableUUID()).to.equal("0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc");
    expect(await makeWorldPeace0x5fbd.symbol()).to.equal("");
    expect(await makeWorldPeace0x5fbd.totalSupply()).to.equal(0);

    expect(await makeWorldPeaceV20xe7f1.BURNER_ROLE()).to.equal("0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848");
    expect(await makeWorldPeaceV20xe7f1.DEFAULT_ADMIN_ROLE()).to.equal(
      "0x0000000000000000000000000000000000000000000000000000000000000000"
    );
    expect(await makeWorldPeaceV20xe7f1.MINTER_ROLE()).to.equal("0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6");
    expect(await makeWorldPeaceV20xe7f1.PAUSER_ROLE()).to.equal("0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a");
    expect(await makeWorldPeaceV20xe7f1.allowance(ethers.constants.AddressZero, ethers.constants.AddressZero)).to.equal(0);
    expect(await makeWorldPeaceV20xe7f1.balanceOf(ethers.constants.AddressZero)).to.equal(0);
    expect(await makeWorldPeaceV20xe7f1.decimals()).to.equal(18);
    expect(await makeWorldPeaceV20xe7f1.getRoleAdmin("0x0000000000000000000000000000000000000000000000000000000000000000")).to.equal(
      "0x0000000000000000000000000000000000000000000000000000000000000000"
    );
    expect(
      await makeWorldPeaceV20xe7f1.hasRole(
        "0x0000000000000000000000000000000000000000000000000000000000000000",
        ethers.constants.AddressZero
      )
    ).to.equal(false);
    expect(await makeWorldPeaceV20xe7f1.name()).to.equal("");
    expect(await makeWorldPeaceV20xe7f1.owner()).to.equal(ethers.constants.AddressZero);
    expect(await makeWorldPeaceV20xe7f1.paused()).to.equal(false);
    expect(await makeWorldPeaceV20xe7f1.proxiableUUID()).to.equal("0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc");
    expect(await makeWorldPeaceV20xe7f1.supportsInterface("0x7965db0b")).to.equal(true);
    expect(await makeWorldPeaceV20xe7f1.supportsInterface("0x00000000")).to.equal(false);
    expect(await makeWorldPeaceV20xe7f1.symbol()).to.equal("");
    expect(await makeWorldPeaceV20xe7f1.totalSupply()).to.equal(0);

    expect(await makeWorldPeaceV30x9fe4.BURNER_ROLE()).to.equal("0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848");
    expect(await makeWorldPeaceV30x9fe4.DEFAULT_ADMIN_ROLE()).to.equal(
      "0x0000000000000000000000000000000000000000000000000000000000000000"
    );
    expect(await makeWorldPeaceV30x9fe4.MINTER_ROLE()).to.equal("0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6");
    expect(await makeWorldPeaceV30x9fe4.PAUSER_ROLE()).to.equal("0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a");
    expect(await makeWorldPeaceV30x9fe4.allowance(ethers.constants.AddressZero, ethers.constants.AddressZero)).to.equal(0);
    expect(await makeWorldPeaceV30x9fe4.balanceOf(ethers.constants.AddressZero)).to.equal(0);
    expect(await makeWorldPeaceV30x9fe4.decimals()).to.equal(18);
    expect(await makeWorldPeaceV30x9fe4.getRoleAdmin("0x0000000000000000000000000000000000000000000000000000000000000000")).to.equal(
      "0x0000000000000000000000000000000000000000000000000000000000000000"
    );
    expect(
      await makeWorldPeaceV30x9fe4.hasRole(
        "0x0000000000000000000000000000000000000000000000000000000000000000",
        ethers.constants.AddressZero
      )
    ).to.equal(false);
    expect(await makeWorldPeaceV30x9fe4.name()).to.equal("");
    expect(await makeWorldPeaceV30x9fe4.owner()).to.equal(ethers.constants.AddressZero);
    expect(await makeWorldPeaceV30x9fe4.paused()).to.equal(false);
    expect(await makeWorldPeaceV30x9fe4.proxiableUUID()).to.equal("0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc");
    expect(await makeWorldPeaceV30x9fe4.supportsInterface("0x00000000")).to.equal(false);
    expect(await makeWorldPeaceV30x9fe4.supportsInterface("0x7965db0b")).to.equal(true);
    expect(await makeWorldPeaceV30x9fe4.symbol()).to.equal("");
    expect(await makeWorldPeaceV30x9fe4.totalSupply()).to.equal(0);
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
