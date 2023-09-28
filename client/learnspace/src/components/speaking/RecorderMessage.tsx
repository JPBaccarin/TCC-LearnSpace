import { ReactMediaRecorder } from 'react-media-recorder';
import RecordIcon from './RecordIcon';

type Props = {
    handleStop: any;
}

function RecorderMessage({ handleStop }: Props) {
  return (
    <ReactMediaRecorder 
        audio
        onStop={handleStop}
        render={({status, startRecording, stopRecording}) => (
            <div>
                <button 
                    onMouseDown={startRecording} 
                    onMouseUp={stopRecording}
                    className=''
                  >
                    <RecordIcon  
                      classText={
                        status == "recording" 
                        ? "animate-pulse text-red-500" 
                        : "text-sky-500"}
                    />
                </button>
                <p className=''>{status}</p>
            </div>
        )}
    
    />
  )
}

export default RecorderMessage