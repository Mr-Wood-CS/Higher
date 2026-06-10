# Two's Complement Support Demo

This is a demo page for a support widget. It has not been added to the main lesson notes.

## Step-by-step helper

Type a negative number, then reveal one step at a time.

<div class="twos-helper" data-bits="8">
    <div class="twos-helper__controls">
        <label for="twos-value">Number</label>
        <input id="twos-value" type="number" min="-128" max="-1" value="-28">
        <button type="button" id="twos-start">Start</button>
        <button type="button" id="twos-next">Next step</button>
        <button type="button" id="twos-reset">Reset</button>
    </div>

    <p id="twos-feedback" class="twos-helper__feedback" aria-live="polite"></p>

    <ol class="twos-helper__steps">
        <li class="twos-step" data-step="0">
            <strong>Step 1: Think positive</strong>
            <span>Ignore the minus sign for now.</span>
            <code id="twos-positive"></code>
        </li>
        <li class="twos-step" data-step="1">
            <strong>Step 2: Flip the bits</strong>
            <span>Change every 0 to 1, and every 1 to 0.</span>
            <code id="twos-flipped"></code>
        </li>
        <li class="twos-step" data-step="2">
            <strong>Step 3: Add 1</strong>
            <span>This gives the two's complement answer.</span>
            <code id="twos-answer"></code>
        </li>
        <li class="twos-step" data-step="3">
            <strong>Step 4: Check</strong>
            <span>The left-most bit should be 1 because the answer is negative.</span>
            <code id="twos-check"></code>
        </li>
    </ol>
</div>

<style>
    .twos-helper {
        border: 1px solid #d8dee4;
        border-radius: 8px;
        padding: 1rem;
    }

    .twos-helper__controls {
        align-items: center;
        display: flex;
        flex-wrap: wrap;
        gap: 0.5rem;
    }

    .twos-helper__controls input {
        max-width: 7rem;
    }

    .twos-helper__controls button {
        cursor: pointer;
    }

    .twos-helper__feedback {
        font-weight: 700;
        margin: 1rem 0;
    }

    .twos-helper__steps {
        display: grid;
        gap: 0.75rem;
        margin-bottom: 0;
        padding-left: 0;
    }

    .twos-step {
        border: 1px solid #d8dee4;
        border-radius: 8px;
        display: none;
        list-style-position: inside;
        padding: 0.75rem;
    }

    .twos-step.is-visible {
        display: grid;
        gap: 0.35rem;
    }

    .twos-step code {
        display: block;
        font-size: 1.1rem;
        white-space: nowrap;
    }
</style>

<script>
    (function () {
        const bits = 8;
        const minValue = -128;
        const maxValue = -1;
        const input = document.getElementById("twos-value");
        const startButton = document.getElementById("twos-start");
        const nextButton = document.getElementById("twos-next");
        const resetButton = document.getElementById("twos-reset");
        const feedback = document.getElementById("twos-feedback");
        const steps = Array.from(document.querySelectorAll(".twos-step"));
        const positiveOutput = document.getElementById("twos-positive");
        const flippedOutput = document.getElementById("twos-flipped");
        const answerOutput = document.getElementById("twos-answer");
        const checkOutput = document.getElementById("twos-check");
        let currentStep = -1;

        function toBinary(value) {
            return value.toString(2).padStart(bits, "0").match(/.{1,4}/g).join(" ");
        }

        function flipBits(binary) {
            return binary.replace(/[01]/g, function (bit) {
                return bit === "0" ? "1" : "0";
            });
        }

        function getValue() {
            return Number.parseInt(input.value, 10);
        }

        function clearSteps() {
            currentStep = -1;
            steps.forEach(function (step) {
                step.classList.remove("is-visible");
            });
        }

        function buildExample() {
            const value = getValue();

            if (!Number.isInteger(value) || value < minValue || value > maxValue) {
                feedback.textContent = "Choose a whole number from -128 to -1.";
                clearSteps();
                return false;
            }

            const positive = Math.abs(value);
            const positiveBinary = toBinary(positive);
            const flippedBinary = flipBits(positiveBinary);
            const answer = 256 - positive;
            const answerBinary = toBinary(answer);

            positiveOutput.textContent = positive + " = " + positiveBinary;
            flippedOutput.textContent = positiveBinary + " becomes " + flippedBinary;
            answerOutput.textContent = flippedBinary + " + 1 = " + answerBinary;
            checkOutput.textContent = answerBinary + " starts with 1, so it represents " + value + ".";
            feedback.textContent = "Ready. Press Next step.";
            clearSteps();
            return true;
        }

        function showNextStep() {
            if (currentStep === -1 && !buildExample()) {
                return;
            }

            if (currentStep < steps.length - 1) {
                currentStep += 1;
                steps.forEach(function (step) {
                    step.classList.remove("is-visible");
                });
                steps[currentStep].classList.add("is-visible");
            }

            feedback.textContent = currentStep === steps.length - 1
                ? "Finished. Try another number when you are ready."
                : "Good. Press Next step when you are ready.";
        }

        startButton.addEventListener("click", buildExample);
        nextButton.addEventListener("click", showNextStep);
        resetButton.addEventListener("click", function () {
            feedback.textContent = "Reset. Press Start.";
            clearSteps();
        });

        buildExample();
    }());
</script>
