import { HardhatUserConfig } from "hardhat/config";
import "@nomicfoundation/hardhat-toolbox";
import "@statespace/hardhat-testgen";
import { ethers } from "hardhat";
import "@statespace/hardhat-mutation"

const config: HardhatUserConfig = {
  solidity: "0.8.17",
  testgen: {
    tests: {
      v1: {
        fixture: async ({ ethers }) => {
          const v1 = await ethers.deployContract("MakeWorldPeace");

          await ethers.deployContract("ERC1967ProxyHarness", [v1.address, v1.interface.getSighash("initialize()")]);
        },
        sequences: [["ERC1967ProxyHarness.*"]],
      },
      v2: {
        fixture: async ({ ethers }) => {
          const v1 = await ethers.deployContract("MakeWorldPeace");
          const v2 = await ethers.deployContract("MakeWorldPeaceV2");
          const proxy = await ethers.deployContract("ERC1967ProxyHarness", [v1.address, v1.interface.getSighash("initialize()")]);

          const proxyv2 = await ethers.getContractAt("MakeWorldPeaceV2", proxy.address);
          await proxyv2.upgradeToAndCall(v2.address, v2.interface.getSighash("upgradeToV2()"));
        },
        sequences: [["ERC1967ProxyHarness.*"]],
      },
      v3: {
        fixture: async ({ ethers }) => {
          const v1 = await ethers.deployContract("MakeWorldPeace");
          const v2 = await ethers.deployContract("MakeWorldPeaceV2");
          const v3 = await ethers.deployContract("MakeWorldPeaceV3");
          const proxy = await ethers.deployContract("ERC1967ProxyHarness", [v1.address, v1.interface.getSighash("initialize()")]);

          const proxyv1 = await ethers.getContractAt("MakeWorldPeace", proxy.address);
          await proxyv1.upgradeToAndCall(v2.address, v2.interface.getSighash("upgradeToV2()"));

          const proxyv2 = await ethers.getContractAt("MakeWorldPeaceV2", proxy.address);
          await proxyv2.upgradeTo(v3.address);
        },
        sequences: [["ERC1967ProxyHarness.*"]],
      },
    },
    settings: {
      excludeExpectations: true,
    },
  },
};

export default config;
