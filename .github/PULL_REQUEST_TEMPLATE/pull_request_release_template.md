# WebKit - Release Pull Request
## Release information
### MDS
- [Mercado Libre](link)
- [Mercado Pago](link)

### Bump
- [Mercado Libre](link)
- [Mercado Pago](link)

## Testing cases
### How to proceed
First, generate the Mercado Libre and Mercado Pago MDS with the Webkit version to test as a project dependency.

Second, select the testing cases that will be reviewed based on this [worksheet](https://docs.google.com/spreadsheets/d/1voheBiI8qCowsr-6MQLwDP2Eb7dcEtXq1uUTb0SLLPY/edit#gid=0). There are flows to test in every release, and each flow has a list of CommandActions and StartupActions that are executed in them. It will help in decision-making.

Then, check the preconditions and important information for the selected cases and test them, checking the checklist.

At the end, in the [Results and Analysis section](#results-and-analysis), indicate the test results.

> [!IMPORTANT]  
> It is highly recommended to test the flow that contains a changed action.

### Cases
> [!NOTE]  
> Check the cases that were tested.

---

- [ ] Shopping Cart
<details>
  <summary>Checklist</summary>

  ## Preconditions and Important Information

  The preconditions and other relevant information can be found in the [link](https://docs.google.com/document/d/1dxKlK63zCjdy3qWA2PbuloWrbSN9SpOPu44j6gULrrc/edit#heading=h.uquh7w36sgps).

  The testing flow and support videos can be found in the [link](https://docs.google.com/document/d/1dxKlK63zCjdy3qWA2PbuloWrbSN9SpOPu44j6gULrrc/edit#heading=h.yck4zwq014cs).
  
  ## Checklist
  Check the step-by-step to test this case, containing a checkbox to mark if the step was done and its expected result.

  | **Tested** | **Action** | **Expected Result** |
  |--------|--------|-----------------|
  |<ul><li>[ ] </li></ul>|Launched the application||
  |<ul><li>[ ] </li></ul>|Logged in with a test user||
  |<ul><li>[ ] </li></ul>|Went to the cart using the icon at the top right|![Cart Flow 1](/docs/guide/assets/images/release-process/Cart/CartFlow1.png)|
  |<ul><li>[ ] </li></ul>|If there were no items in the cart, add at least one||
  |<ul><li>[ ] </li></ul>|Went back to the cart|![Cart Flow 2](/docs/guide/assets/images/release-process/Cart/CartFlow2.png)|
  |<ul><li>[ ] </li></ul>|Tapped to change an item quantity|![Cart Flow 3](/docs/guide/assets/images/release-process/Cart/CartFlow3.png)|
  |<ul><li>[ ] </li></ul>|Changed the item quantity (if available) or dismissed the modal by clicking outside it||
  |<ul><li>[ ] </li></ul>|Went to check out (it needs to advance only one screen to test the push action)|![Cart Flow 4](/docs/guide/assets/images/release-process/Cart/CartFlow4.png)|
</details>

---

- [ ] Insurtech - Messages
<details>
  <summary>Checklist</summary>

  ## Preconditions and Important Information

  The preconditions and other relevant information can be found in the [link](https://docs.google.com/document/d/1dxKlK63zCjdy3qWA2PbuloWrbSN9SpOPu44j6gULrrc/edit#heading=h.kkyhx2prmvgt).

  The testing flow and support videos can be found in the [link](https://docs.google.com/document/d/1dxKlK63zCjdy3qWA2PbuloWrbSN9SpOPu44j6gULrrc/edit#heading=h.x8qg2nglush).
  
  ## Checklist
  Check the step-by-step to test this case, containing a checkbox to mark if the step was done and its expected result.

  ### Manufacturer Warranty

  | **Tested** | **Action** | **Expected Result** |
  |--------|--------|-----------------|
  |<ul><li>[ ] </li></ul>|Launched the MP application||
  |<ul><li>[ ] </li></ul>|Logged in with a test user||
  |<ul><li>[ ] </li></ul>|Launched the deep link generated for GAREX_MLB_MANUFACTURER-WARRANTY|![Insurtech Messages MW Flow 1](/docs/guide/assets/images/release-process/Insurtech/Messages/InsurtechMessagesMWFlow1.png)|
  |<ul><li>[ ] </li></ul>|Selected the option with the message “Minha garantia de fábrica venceu”|![Insurtech Messages MW Flow 2](/docs/guide/assets/images/release-process/Insurtech/Messages/InsurtechMessagesMWFlow2.png)|

  ### Digital Account

  | **Tested** | **Action** | **Expected Result** |
  |--------|--------|-----------------|
  |<ul><li>[ ] </li></ul>|Launched the application||
  |<ul><li>[ ] </li></ul>|Logged in with a test user||
  |<ul><li>[ ] </li></ul>|Launched the deep link generated for CARDS_MLB_DIGITAL_ACCOUNT_1|![Insurtech Messages DA Flow 1](/docs/guide/assets/images/release-process/Insurtech/Messages/InsurtechMessagesDAFlow1.png)|
  |<ul><li>[ ] </li></ul>|Selected the option “OK, continuar”|![Insurtech Messages DA Flow 2](/docs/guide/assets/images/release-process/Insurtech/Messages/InsurtechMessagesDAFlow2.png)|
  |<ul><li>[ ] </li></ul>|Selected the option “Me roubaram com violência ou sob ameaça”|![Insurtech Messages DA Flow 3](/docs/guide/assets/images/release-process/Insurtech/Messages/InsurtechMessagesDAFlow3.png)|
  |<ul><li>[ ] </li></ul>|Selected the option “Enviar o BO”|![Insurtech Messages DA Flow 4](/docs/guide/assets/images/release-process/Insurtech/Messages/InsurtechMessagesDAFlow4.png)|
  |<ul><li>[ ] </li></ul>|Attached a PDF or Image file|![Insurtech Messages DA Flow 5](/docs/guide/assets/images/release-process/Insurtech/Messages/InsurtechMessagesDAFlow5.png)|
</details>

---

### Results and Analysis
> [!NOTE]  
> Indicate if the tests succeeded or if any error or problem occurred. In case of unexpected results, attach videos, gifs, images, text, or any resource to explain what was encountered.

## Quality checklist
- [ ] I added the release version and date to the _CHANGELOG.md_
- [ ] I changed the version on the _MLWebkit.podspec_