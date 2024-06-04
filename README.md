# Start2Impact Blockchain Intro Project

<p align="center">
    <img src="readme-images/logo.png" alt="TravelFundraising logo">
</p>

This is my Blockchain Intro project for [Start2Impact](https://talent.start2impact.it/profile/riccardo-santi).

### TravelFundraising: A Smart Contract to raise funds for a travel company through the Ethereum blockchain.

TravelFundraising is a Smart Contract coded in Solidity and carefully tested using Remix IDE.
Through TravelFundraising, campaign organizers can start a fundraising and set the Ether target at the beginning, ensuring complete transparency and control.
Users can make contributions of any amount, track the contract's balance in real-time, and have confidence in the security and immutability of the blockchain. When the fundraising target is reached, the owner can instantly close the campaign and withdraw the collected Ether. This innovative approach simplifies the fundraising process and also guarantees the integrity of funds management, promoting transparency and reliability.

**Solidity** is a programming language for creating smart contracts on the Ethereum blockchain.
<br>
**Remix IDE** is a powerful integrated development environment for building, testing, and deploying Ethereum smart contracts.

<hr/>

## 📖Index

- [ 🚀 Main Features (Tech Explanation) ](#mainfeatures)
- [ 🛠️ How to deploy ](#howtodeploy)
- [ 📈 Improved Skills ](#improvedskills)
- [ 👨‍💻 About me ](#aboutme)

<a name="mainfeatures"></a>

## 🚀 Main Features:

- #### The campaign organizer sets the fundraising target in Wei (an Ether submultiple) and starts the campaign by deploying the contract to the blockchain, in this example the target is set to 0.1 Ether (100000000000000000 Wei)

<p align="center">
    <img src="readme-images/1.png" alt="IMAGE 1" width="80%">
</p>
<br><br>
<p align="center">
    <img src="readme-images/2.png" alt="IMAGE 2" width="80%">
</p>
<br><br><p align="center">
    <img src="readme-images/3.png" alt="IMAGE 3" width="80%">
</p>
<br><br>

- #### Users can send funds to the contract through the Donate function, in this example we are donating 0.01 Ether

<p align="center">
    <img src="readme-images/4.png" alt="IMAGE 4" width="80%">
</p>
<br><br>
<p align="center">
    <img src="readme-images/5.png" alt="IMAGE 5" width="80%">
</p>
<br><br>

- #### Everyone can see the the number of donations, the fundraising goal and the status (open: still accepting donations - closed: target reached, no longer accepting donations)

<p align="center">
    <img src="readme-images/6.png" alt="IMAGE 6" width="80%>
</p>
<br><br>
<p align="center">
    <img src="readme-images/7.png" alt="IMAGE 7" width="80%>
</p>
<br><br>
<p align="center">
    <img src="readme-images/8.png" alt="IMAGE 8" width="80%>
</p>
<br><br>

- #### Users can also see the contract's balance in real-time through the getFundraisingBalance function

<p align="center">
    <img src="readme-images/9.png" alt="IMAGE 9" width="80%>
</p>
<br><br>

- #### Once the goal is reached the Owner can close the campaign through the closeFundraising function and withdraw Ether through the withdrawFunds function

<p align="center">
    <img src="readme-images/10.png" alt="IMAGE 10" width="80%>
</p>
<br><br>
<p align="center">
    <img src="readme-images/11.png" alt="IMAGE 11" width="80%>
</p>
<br><br>
<p align="center">
    <img src="readme-images/12.png" alt="IMAGE 12" width="80%>
</p>
<br><br>
<p align="center">
    <img src="readme-images/13.png" alt="IMAGE 13" width="80%>
</p>
<br><br>
<p align="center">
    <img src="readme-images/14.png" alt="IMAGE 14" width="80%>
</p>
<br><br>
<p align="center">
    <img src="readme-images/15.png" alt="IMAGE 15" width="80%>
</p>
<br><br>

- #### Many prior checks are implemented to assure complete security: for example only the Owner can close the fundraising and collect the funds

<p align="center">
    <img src="readme-images/16.png" alt="IMAGE 16" width="80%>
</p>
<br><br>
<p align="center">
    <img src="readme-images/17.png" alt="IMAGE 17" width="80%>
</p>
<br><br>

- #### Another example is that you get a warning if you try to make an empty donation
<p align="center">
    <img src="readme-images/18.png" alt="IMAGE 18" width="80%>
</p>
<br><br>
<p align="center">
    <img src="readme-images/19.png" alt="IMAGE 19" width="80%>
</p>
<br><br>

<a name="howtodeploy"></a>

## 🛠️ How to deploy

- Clone this repository in your local
- Open [Remix IDE](https://remix.ethereum.org/) in your browser and upload the `contract.sol` file in a new workspace.
- Open the Compiler section, select `Solidity version 0.8.21` and click Compile.
- Be sure to have [Metamask wallet](https://metamask.io/download/) installed and with some Ether on the testnet.
- Open the Deploy & Run section, select `Injected Provider - Metamask` and approve the connection.
- Next to the orange Deploy button type the desider fundraising target in Wei (here's a conversion tool) and click Deploy.
- Now the contract is deployed on the blockchain so you can enojy its features through the Deployed Contracts section in the bottom of the page!

<a name="improvedskills"></a>

## 📈 Improved Skills

[Solidity](https://soliditylang.org/), [Remix IDE](https://remix-ide.readthedocs.io/en/latest/)

<a name="aboutme"></a>

## 👨‍💻 About me

[![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/riccardo-santi/) &nbsp;&nbsp;
[![website](https://img.shields.io/badge/website-000000?style=for-the-badge&logo=About.me&logoColor=white)](https://riccardo-santi.vercel.app/)
