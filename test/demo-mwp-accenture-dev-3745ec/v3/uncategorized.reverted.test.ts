/**
 * Generated file - DO NOT EDIT
 */
import { ethers, artifacts, network } from "hardhat";
import { BigNumber } from "ethers";
import { expect } from "chai";
import { loadFixture, time, impersonateAccount, setBalance } from "@nomicfoundation/hardhat-network-helpers";
import "@nomicfoundation/hardhat-chai-matchers";

describe("Uncategorized", async () => {
  let acct0xf39f,
    erc1967proxyHarness0xcf7e,
    makeWorldPeace0x5fbd,
    makeWorldPeaceV20xe7f1,
    makeWorldPeaceV30x9fe4,
    erc1967proxyHarness0xcf7eMakeWorldPeaceV2;

  beforeEach(async () => {
    await network.provider.send("hardhat_reset");
    await fixture();
  });

  it("0x441122", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x406c86

    await expect(
      acct0xf39f.sendTransaction({
        to: erc1967proxyHarness0xcf7e.address,
        value: 0,
        data: "0xa457c2d70101010101010101010101010101010101010101010101010101010101010101000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      })
    ).to.be.revertedWithoutReason();
  });

  it("0x441120", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x402ffa

    await expect(
      acct0xf39f.sendTransaction({
        to: erc1967proxyHarness0xcf7e.address,
        value: 0,
        data: "0x300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      })
    ).to.be.revertedWithoutReason();
  });

  it("0x4410c9", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x3fa0e4

    await expect(
      acct0xf39f.sendTransaction({
        to: erc1967proxyHarness0xcf7e.address,
        value: 0,
        data: "0xdd62ed3e0000000000000000000000000000000000000000000000000000000000000000010101010101010101010101010101010101010101010101010101010101010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      })
    ).to.be.revertedWithoutReason();
  });

  it("0x4410b3", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x3f3de2

    await expect(
      acct0xf39f.sendTransaction({
        to: erc1967proxyHarness0xcf7e.address,
        value: 0,
        data: "0x23b872dd0101010101010101010101010101010101010101010101010101010101010101000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      })
    ).to.be.revertedWithoutReason();
  });

  it("0x44105b", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x408a61

    await expect(
      acct0xf39f.sendTransaction({
        to: erc1967proxyHarness0xcf7e.address,
        value: 0,
        data: "0x4f1ef2860000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      })
    ).to.be.revertedWithoutReason();
  });

  it("0x441024", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x3f6181

    await expect(
      acct0xf39f.sendTransaction({
        to: erc1967proxyHarness0xcf7e.address,
        value: 0,
        data: "0xa9059cbb0101010101010101010101010101010101010101010101010101010101010101000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      })
    ).to.be.revertedWithoutReason();
  });

  it("0x441010", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x3f3f44

    await expect(
      acct0xf39f.sendTransaction({
        to: erc1967proxyHarness0xcf7e.address,
        value: 0,
        data: "0x3f8000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      })
    ).to.be.revertedWithoutReason();
  });

  it("0x440fe2", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x412a2d

    await expect(
      acct0xf39f.sendTransaction({
        to: erc1967proxyHarness0xcf7e.address,
        value: 0,
        data: "0x800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      })
    ).to.be.revertedWithoutReason();
  });

  it("0x440fd0", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x40514d

    await expect(
      acct0xf39f.sendTransaction({
        to: erc1967proxyHarness0xcf7e.address,
        value: 0,
        data: "0xf2fde38b0101010101010101010101010101010101010101010101010101010101010101000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      })
    ).to.be.revertedWithoutReason();
  });

  it("0x440fcb", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x3ff3ef

    await expect(
      acct0xf39f.sendTransaction({
        to: erc1967proxyHarness0xcf7e.address,
        value: 0,
        data: "0x91d148540000000000000000000000000000000000000000000000000000000000000000010101010101010101010101010101010101010101010101010101010101010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      })
    ).to.be.revertedWithoutReason();
  });

  it("0x440f9e", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x40ab71

    await expect(
      acct0xf39f.sendTransaction({
        to: erc1967proxyHarness0xcf7e.address,
        value: 0x61e19e0c9bab2410000n,
        data: "0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      })
    ).to.be.revertedWithoutReason();
  });

  it("0x440f89", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x41597c

    await expect(
      acct0xf39f.sendTransaction({
        to: erc1967proxyHarness0xcf7e.address,
        value: 0,
        data: "0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      })
    ).to.be.revertedWithoutReason();
  });

  it("0x440f79", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x3f5ad9

    await expect(
      acct0xf39f.sendTransaction({
        to: erc1967proxyHarness0xcf7e.address,
        value: 0,
        data: "0x395093510101010101010101010101010101010101010101010101010101010101010101000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      })
    ).to.be.revertedWithoutReason();
  });

  it("0x440f63", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x42341a

    await expect(
      acct0xf39f.sendTransaction({
        to: erc1967proxyHarness0xcf7e.address,
        value: 0,
        data: "0x23b872dd0000000000000000000000000000000000000000000000000000000000000000010101010101010101010101010101010101010101010101010101010101010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      })
    ).to.be.revertedWithoutReason();
  });

  it("0x440e0b", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x41c7ea

    await expect(
      acct0xf39f.sendTransaction({
        to: erc1967proxyHarness0xcf7e.address,
        value: 0,
        data: "0x3659cfe60101010101010101010101010101010101010101010101010101010101010101000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      })
    ).to.be.revertedWithoutReason();
  });

  it("0x440ddf", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x41afc8

    await expect(
      acct0xf39f.sendTransaction({
        to: erc1967proxyHarness0xcf7e.address,
        value: 0,
        data: "0x380000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      })
    ).to.be.revertedWithoutReason();
  });

  it("0x440da6", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x414e45

    await expect(
      acct0xf39f.sendTransaction({
        to: erc1967proxyHarness0xcf7e.address,
        value: 0,
        data: "0x4f1ef2860101010101010101010101010101010101010101010101010101010101010101000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      })
    ).to.be.revertedWithoutReason();
  });

  it("0x440d6e", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x423b85

    await expect(
      acct0xf39f.sendTransaction({
        to: erc1967proxyHarness0xcf7e.address,
        value: 0,
        data: "0x4f1ef2860000000000000000000000000000000000000000000000000000000000000000010101010101010101010101010101010101010101010101010101010101010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      })
    ).to.be.revertedWithoutReason();
  });

  it("0x440d54", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x411bb1

    await expect(
      acct0xf39f.sendTransaction({
        to: erc1967proxyHarness0xcf7e.address,
        value: 0,
        data: "0x36568abe0000000000000000000000000000000000000000000000000000000000000000010101010101010101010101010101010101010101010101010101010101010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      })
    ).to.be.revertedWithoutReason();
  });

  it("0x440d1f", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x423c5a

    await expect(
      acct0xf39f.sendTransaction({
        to: erc1967proxyHarness0xcf7e.address,
        value: 0,
        data: "0x095ea7b30101010101010101010101010101010101010101010101010101010101010101000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      })
    ).to.be.revertedWithoutReason();
  });

  it("0x440ca7", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x40e9b0

    await expect(
      acct0xf39f.sendTransaction({
        to: erc1967proxyHarness0xcf7e.address,
        value: 0,
        data: "0xdd62ed3e0101010101010101010101010101010101010101010101010101010101010101000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      })
    ).to.be.revertedWithoutReason();
  });

  it("0x440c79", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x41d338

    await expect(
      acct0xf39f.sendTransaction({
        to: erc1967proxyHarness0xcf7e.address,
        value: 0,
        data: "0x79cc67900101010101010101010101010101010101010101010101010101010101010101000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      })
    ).to.be.revertedWithoutReason();
  });

  it("0x440c2f", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x41fb54

    await expect(
      acct0xf39f.sendTransaction({
        to: erc1967proxyHarness0xcf7e.address,
        value: 0,
        data: "0xc00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      })
    ).to.be.revertedWithoutReason();
  });

  it("0x440bf1", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x410d7a

    await expect(
      acct0xf39f.sendTransaction({
        to: erc1967proxyHarness0xcf7e.address,
        value: 0,
        data: "0x70a082310101010101010101010101010101010101010101010101010101010101010101000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      })
    ).to.be.revertedWithoutReason();
  });

  it("0x440bde", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x4287f7

    await expect(
      acct0xf39f.sendTransaction({
        to: erc1967proxyHarness0xcf7e.address,
        value: 0,
        data: "0xd547741f0000000000000000000000000000000000000000000000000000000000000000010101010101010101010101010101010101010101010101010101010101010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      })
    ).to.be.revertedWithoutReason();
  });

  it("0x440b95", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x3ff9a1

    await expect(
      acct0xf39f.sendTransaction({
        to: erc1967proxyHarness0xcf7e.address,
        value: 0,
        data: "0x40c10f190101010101010101010101010101010101010101010101010101010101010101000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      })
    ).to.be.revertedWithoutReason();
  });

  it("0x440b8f", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x40ef58

    await expect(
      acct0xf39f.sendTransaction({
        to: erc1967proxyHarness0xcf7e.address,
        value: 0,
        data: "0xe00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      })
    ).to.be.revertedWithoutReason();
  });

  it("0x440b6f", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x40d800

    await expect(
      acct0xf39f.sendTransaction({
        to: erc1967proxyHarness0xcf7e.address,
        value: 0,
        data: "0x2f2ff15d0000000000000000000000000000000000000000000000000000000000000000010101010101010101010101010101010101010101010101010101010101010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      })
    ).to.be.revertedWithoutReason();
  });

  it("0x440b3e", async () => {
    // http://172.16.0.71/internal/root/0x374624/path/0x3ff2fe

    await expect(
      acct0xf39f.sendTransaction({
        to: erc1967proxyHarness0xcf7e.address,
        value: 0,
        data: "0x818000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      })
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