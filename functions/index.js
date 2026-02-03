const functions = require("firebase-functions");
const admin = require("firebase-admin");
const express = require("express");
const cors = require("cors");
const Deepgram = require("@deepgram/sdk");
require("dotenv").config();

admin.initializeApp();

const app = express();
app.use(cors({ origin: true }));
app.use(express.json());

// Initialize Deepgram
// Note: In deployment, use functions.config() or native environment variables.
// For now, we'll try to use process.env assuming keys are set in the environment or .env file bundled.
const deepgramApiKey = process.env.DEEPGRAM_API_KEY;

app.post("/transcribe", async (req, res) => {
    try {
        const deepgram = new Deepgram.DeepgramClient(deepgramApiKey);
        const { audioUrl, mimetype } = req.body;

        if (!audioUrl) {
            return res.status(400).json({ error: "No audioUrl provided" });
        }

        const response = await deepgram.listen.prerecorded.transcribeUrl(
            { url: audioUrl },
            {
                smart_format: true,
                model: "nova-2",
                mimetype: mimetype || "audio/wav",
            }
        );

        res.json({ transcription: response.result.results.channels[0].alternatives[0].transcript });
    } catch (error) {
        console.error("Deepgram Error:", error);
        res.status(500).json({ error: error.message });
    }
});

exports.api = functions.https.onRequest(app);
