'use client';

import React, { useState } from "react";
import Title from "./Title";
import RecorderMessage from "./RecorderMessage";
import axios from "axios";

interface Message {
  sender: string;
  blobUrl: string;
}

function Controller() {
  const [isLoading, setIsLoading] = useState(false);
  const [messages, setMessages] = useState<Message[]>([]);

  const createBlobUrl = (data: any): string => {
    const blob = new Blob([data], { type: "audio/mpeg" });
    const url = window.URL.createObjectURL(blob);
    return url;
  };

  const handleStop = async (blobUrl: string) => {
    setIsLoading(true);

    // Append recorded message to messages
    const myMessage: Message = { sender: "me", blobUrl };
    const messagesArr: Message[] = [...messages, myMessage];

    try {
      // Convert blob URL to blob object
      const blob = await fetch(blobUrl).then((res) => res.blob());

      // Construct audio to send file
      const formData = new FormData();
      formData.append("file", blob, "myFile.wav");

      // Send form data to API endpoint
      const response = await axios.post<ArrayBuffer>(
        "http://localhost:8000/post-audio",
        formData,
        {
          headers: { "Content-Type": "multipart/form-data" },
        }
      );

      const audioBlob = new Blob([response.data], { type: "audio/mpeg" });
      const audioBlobUrl = window.URL.createObjectURL(audioBlob);

      // Append to audio
      const rachelMessage: Message = { sender: "rachel", blobUrl: audioBlobUrl };
      messagesArr.push(rachelMessage);
      setMessages(messagesArr);

      // Play audio
      setIsLoading(false);
      const audio = new Audio();
      audio.src = audioBlobUrl;
      audio.play();
    } catch (err) {
      console.error(err);
      setIsLoading(false);
    }
  };

  return (
    <div className="h-screen overflow-y-hidden">
      <Title setMessages={setMessages} />
      <div className="flex flex-col justify-between h-full overflow-y-scroll pb-96">
        <div className="mt-5 px-5">
          {messages.map((audio, index) => (
            <div
              key={index + audio.sender}
              className={
                "flex flex-col" +
                (audio.sender === "rachel" ? " flex items-end" : "")
              }
            >
              {/* Sender */}
              <div className="mt-4">
                <p
                  className={
                    audio.sender === "rachel"
                      ? "text-right mr-2 italic text-green-500"
                      : "ml-2 italic text-blue-500"
                  }
                >
                  {audio.sender}
                </p>

                {/* Audio Message */}
                <audio src={audio.blobUrl} controls className="appearance-none" />
              </div>
            </div>
          ))}

          {messages.length === 0 && !isLoading && (
            <div className="text-center font-light italic mt-10">
              Send LearnSpace a message
            </div>
          )}

          {isLoading && (
            <div className="text-center font-light italic mt-10 animate-pulse">
              Gimme a few seconds...
            </div>
          )}
        </div>
        {/* Recorder */}
        <div className="fixed bottom-0 w-full py-6 border-t text-center bg-gradient-conic from-red-800 to-red-950">
          <div className="flex justify-center items-center w-full">
            <RecorderMessage handleStop={handleStop} />
          </div>
        </div>
      </div>
    </div>
  );
}

export default Controller;
