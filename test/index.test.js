const fs = require("fs");
const path = require("path");
const chai = require("chai");
chai.use(require("chai-dom"));
const { expect } = chai;

describe("index.html", () => {
  it("contains a <link> tag", () => {
    const link = document.querySelector("link");
    const hint = "No <link> tag was found";
    expect(link, hint).to.exist;
  });

  it("correctly links to the style.css file with a relative path", () => {
    const link = document.querySelector("link");
    const hint1 =
      "Make sure you provide a rel attribute to identify the link as a stylesheet";
    expect(link, hint1).to.have.attribute("rel", "stylesheet");
    const hint2 =
      "Make sure you provide a relative path to style.css from index.html";
    expect(link, hint2).to.have.attribute("href", "./style.css");
  });
});
