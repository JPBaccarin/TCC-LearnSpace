'use client'

import { useState } from "react";
import Title from "./Title";
import RecorderMessage from "./RecorderMessage";
import axios from "axios";

function Controller() {
    const [IsLoading, setIsLoading] = useState(false);
    const [messages, setMessages] = useState<any[]>([]);

    const createBlobUrl = (data: any) => {
        const blob = new Blob([data], { type: "audio/mpeg"});
        const url = window.URL.createObjectURL(blob);
        return url;
    };

    const handleStop = async (blobUrl: string) => {
        setIsLoading(true)

        // Append recorded message to messages
        const myMessage = { sender: "me", blobUrl};
        const messagesArr = {...messages, myMessage};

        //Converto blob url to blob object
        fetch(blobUrl)
            .then((res) => res.blob())
            .then(async (blob) => {

                // Construct audio to send file
                const formData = new FormData();
                formData.append("file", blob, "myFile.wav");

                // Send form data to API endpoint
                await axios
                    .post("http://localhost:8000/post-audio", formData, {
                        headers: {"Content-Type": "audio/mpeg"}, 
                        responseType: "arraybuffer",
                    })
                    .then((res: any) => {
                        const blob = res.data;
                        const audio = new Audio();
                        audio.src = createBlobUrl(blob);

                        // Append to audio
                        const rachelMessage = {sender: "rachel", blobUrl: audio.src};
                        messagesArr.push(rachelMessage);
                        setMessages(messagesArr);

                        // play audio
                        setIsLoading(false)
                        audio.play();

                    })
                    .catch((err) => {
                        console.error(err.message);
                        setIsLoading(false);
                    });

        })

        setIsLoading(false)
    };

    return (
        <div>
            <Title setMessages={setMessages}/>
            <div>
                {/*Conversation */}
                <div>
                   {messages.map((audio, index) => {
                        return (
                        <div 
                            key={index + audio.sender} 
                            className={
                                "" + 
                                (audio.sender == "rachel" && "")
                            }
                        >
                            {/* Sender */}
                            <div >
                                <p className={audio.sender == "rachel" ? "" : ""}
                                >
                                    {audio.sender}
                                </p>
                            </div>

                            {/* Audio Message */}
                            <audio src={audio.blobUrl}  controls />
                        </div>
                    );
                   })}

                   {messages.length == 0 && !IsLoading && (
                        <div >
                            Send LearnSpace a message
                        </div>
                   )}

                    {!IsLoading && (
                        <div >
                            Gimme a few seconds...
                        </div>
                    )}
                </div>
                {/* Recorder*/}
                <div>
                    <div>
                        <RecorderMessage handleStop={handleStop}/>
                    </div>
                </div>
            </div>
        </div>
    )
}

export default Controller