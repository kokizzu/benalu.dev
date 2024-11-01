<script>
  import { Icon } from "svelte-icons-pack";
  import { kuisioner } from "../../kuisioner.js";
  import { IoClose } from "../../node_modules/svelte-icons-pack/dist/io"
  import InputBox from "./InputBox.svelte";

  export let ROOM_NAME = "";
  export let HOUSE_NAME = "";

  let isShow = /** @type {boolean} */ (false);

  export const Show = () => isShow = true;
  export const Hide = () => isShow = false;

  function randString() {
    return Math.random().toString(36).substring(2, 8);
  }

  const cancel = () => {
    isShow = false;
  }

  /**
   * @typedef {Object} quiz
   * @property {string} question
   * @property {string} answer
   * 
  */

  let quizs = /** @type {quiz[]} */ ([]);
  for (let q of kuisioner) {
    quizs = [...quizs, {
      question: q.question,
      answer: '--'
    }];
  }

  let namaAseli = '';
  let pekerjaanOrJurusanKuliah = '';
  let namaKantorOrKampus = '';

  function OnSubmit() {
    let payload = `
**Nama Asli**:
${namaAseli}

**Pekerjaan / Jurusan Kuliah**:
${pekerjaanOrJurusanKuliah}

**Kantor / Kampus**:
${namaKantorOrKampus}

**Kost**:
${HOUSE_NAME}

**Kamar**:
${ROOM_NAME}

**Pertanyaan**:
${quizs.map((item, idx) => `${idx + 1}. **${item.question}**: ${item.answer}`).join('\n')}
`
    console.log(payload);
    window.open('https://t.me/benaludev?text='+encodeURIComponent(payload.trim()), '_blank');
  }
</script>

<div class={`popup_container ${isShow ? 'show' : ''}`}>
  <div class="popup">
    <header class="header">
      <h2>Ask for room {ROOM_NAME}</h2>
      <button on:click={Hide}>
        <Icon size="22" color="#FFF" src={IoClose}/>
      </button>
    </header>
    <div class="forms">
      <InputBox
        label="Nama Asli"
        id={`_`+randString()}
        bind:value={namaAseli}
        placeholder="Masukkan Nama Asli"
      />
      <InputBox
        label="Pekerjaan / Jurusan"
        id={`_`+randString()}
        bind:value={pekerjaanOrJurusanKuliah}
        placeholder="Masukkan Pekerjaan / Jurusan"
      />
      <InputBox
        label="Kantor / Kampus"
        id={`_`+randString()}
        bind:value={namaKantorOrKampus}
        placeholder="Masukkan Kantor / Kampus"
      />
      {#each (kuisioner || []) as q, idx}
        <div class="question">
          <span class="title">{q.question}</span>
          {#each (q.choices || []) as a}
            {@const id = "_" + randString()}
            <div class="answers">
              <label class="answer" for={id} name={q.question}>
                <input
                  type="radio"
                  id={id}
                  name={q.question}
                  value={a}
                  checked={quizs[idx].answer === a}
                  on:change={
                    (e) => quizs[idx].answer = e.target.value
                  }
                />
                <span>{a}</span>
              </label>
            </div>
          {/each}
        </div>
      {/each}
    </div>
    <div class="foot">
      <div class="left">
      </div>
      <div class="right">
        <button class="cancel"
          on:click|preventDefault={cancel}
        >Cancel</button>
        <button class="ok" on:click|preventDefault={OnSubmit}>
          <span>Submit</span>
        </button>
      </div>
    </div>
  </div>
</div>

<style>
  @keyframes spin {
    from {
      transform: rotate(0deg);
    }
    to {
      transform: rotate(360deg);
    }
  }

  :global(.spin) {
    animation: spin 1s cubic-bezier(0, 0, 0.2, 1) infinite;
  }

  .popup_container {
    display: none;
		position: fixed;
		width: 100%;
		height: 100%;
		top: 0;
		left: 0;
		bottom: 0;
		right: 0;
		z-index: 2000;
		background-color: rgba(0 0 0 / 40%);
		backdrop-filter: blur(1px);
		justify-content: center;
		padding: 50px;
    overflow: auto;
	}

  .popup_container.show {
    display: flex;
  }

	.popup_container .popup {
		border-radius: 15px;
		background-color: #344d77;
    color: #FFF;
    border: 1px solid #dddddd;
		height: fit-content;
		width: 700px;
		display: flex;
		flex-direction: column;
	}

  .popup_container .popup header {
		display: flex;
		flex-direction: row;
		justify-content: space-between;
		align-items: center;
		padding: 25px 20px 10px 20px;
		border-bottom: 1px solid var(--gray-004);
	}

	.popup_container .popup header h2 {
		margin: 0;
    font-weight: 600;
	}

	.popup_container .popup header button {
		display: flex;
		justify-content: center;
		align-items: center;
		padding: 5px;
		border-radius: 50%;
		border: none;
		background-color: transparent;
		cursor: pointer;
	}

	.popup_container .popup header button:hover {
		background-color: #ffffff20;
	}

	.popup_container .popup .forms {
		padding: 20px;
		display: flex;
		flex-direction: column;
		gap: 25px;
	}

  .popup_container .popup .forms .question {
    display: flex;
    flex-direction: column;
    gap: 10px;
  }

  .popup_container .popup .forms .question .title {
    font-size: 18px;
    font-weight: 600;
  }

  .popup_container .popup .forms .question .answers {
    display: flex;
    flex-direction: column;
    gap: 5px;
  }

  .popup_container .popup .forms .question .answers .answer {
    display: flex;
    flex-direction: row;
    align-items: center;
    gap: 5px;
    position: relative;
    cursor: pointer;
  }

  .popup_container .popup .forms .question .answers .answer::before {
    position: absolute;
    content: "";
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 220px;
    height: 45px;
    z-index: -1;
    transition: all 0.3s cubic-bezier(0.68, -0.55, 0.265, 1.55);
    border-radius: 10px;
    border: 2px solid transparent;
  }

  .popup_container .popup .forms .question .answers .answer:hover::before {
    transition: all 0.2s ease;
  }

  .popup_container .popup .forms .question .answers .answer:has(input:checked)::before {
    background-color: #2d3750;
    border-color: #435dd8;
    height: 50px;
  }

  .popup_container .popup .forms .question .answers .answer input[type="radio"] {
    background-color: var(--bs-gray);
    appearance: none;
    width: 25px;
    height: 25px;
    border-radius: 50%;
    display: flex;
    justify-content: center;
    align-items: center;
  }
  .popup_container .popup .forms .question .answers .answer input[type="radio"]:checked {
    background-color: var(--bs-orange);
    -webkit-animation: puls 0.7s forwards;
    animation: pulse 0.7s forwards;
  }

  .popup_container .popup .forms .question .answers .answer input[type="radio"]:before {
    content: "";
    width: 6px;
    height: 6px;
    border-radius: 50%;
    transition: all 0.1s cubic-bezier(0.165, 0.84, 0.44, 1);
    background-color: #fff;
    transform: scale(0);
  }

  .popup_container .popup .forms .question .answers .answer input[type="radio"]:checked::before {
    transform: scale(1);
  }

  @keyframes pulse {
    0% {
      box-shadow: 0 0 0 0 rgba(255, 255, 255, 0.4);
    }
    70% {
      box-shadow: 0 0 0 8px rgba(255, 255, 255, 0);
    }
    100% {
      box-shadow: 0 0 0 0 rgba(255, 255, 255, 0);
    }
  }

	.popup_container .popup .foot {
		display: flex;
		flex-direction: row;
    justify-content: space-between;
		gap: 10px;
		align-items: center;
		padding: 10px 20px 25px 20px;
		border-top: 1px solid var(--gray-004);
	}

  .popup_container .popup .foot .right {
    display: flex;
    flex-direction: row;
    align-items: center;
    gap: 10px;
  }

	.popup_container .popup .foot button {
		padding: 10px 15px;
		border-radius: 9999px;
		border: none;
		color: var(--bs-white);
		cursor: pointer;
		font-weight: 600;
	}

	.popup_container .popup .foot button.ok {
		background-color: var(--bs-green);
    display: flex;
    justify-content: center;
    align-items: center;
	}

  .popup_container .popup .foot button.ok:hover {
    background-color: rgb(83, 218, 132);
  }

	.popup_container .popup .foot button.ok:disabled {
		cursor: not-allowed;
		background-color: var(--gray-003);
		color: var(--gray-007);
	}

  .popup_container .popup .foot button.cancel {
		background-color: transparent;
	}

	.popup_container .popup .foot button.cancel:hover {
		background-color: #ffffff20;
	}

  @media only screen and (max-width : 768px) {
    .popup_container {
      padding: 20px;
    }

    .popup_container .popup {
      width: 100%;
    }
  }
</style>