import { useState } from 'react';

interface Step {
  title: string;
  description: string;
  imageSrc: string;
}

interface TutorialModalProps {
  isOpen: boolean;
  steps: Step[];
  onClose: () => void;
}

const TutorialModal: React.FC<TutorialModalProps> = ({ isOpen, steps, onClose }) => {
  const [currentStep, setCurrentStep] = useState(0);

  const handleNextStep = () => {
    if (currentStep < steps.length - 1) {
      setCurrentStep((prevStep) => prevStep + 1);
    }
  };

  const handlePreviousStep = () => {
    if (currentStep > 0) {
      setCurrentStep((prevStep) => prevStep - 1);
    }
  };

  return (
    <div className={`fixed inset-0 flex items-center justify-center z-50 ${isOpen ? 'opacity-100' : 'opacity-0 pointer-events-none'}`}>
      {/* Blur de fundo */}
      {isOpen && <div className="fixed inset-0 bg-black/50  " onClick={onClose}></div>}

      <div className="bg-white dark:bg-gray-800  p-4 rounded-md shadow-sm shadow-blue-500/20 border border-white/10 transition-opacity duration-300 relative">
        <img src={steps[currentStep].imageSrc} alt={steps[currentStep].title} className="w-40 mx-auto mb-4" />
        <h2 className="text-xl font-bold mb-2">{steps[currentStep].title}</h2>
        <p className="mb-4">{steps[currentStep].description}</p>
        <div className="flex justify-between">
          <button
            className={`px-4 py-2 bg-blue-500 hover:bg-blue-600 transition-all text-white rounded ${currentStep === 0 ? 'invisible' : ''}`}
            onClick={handlePreviousStep}
          >
            Anterior
          </button>
          {currentStep < steps.length - 1 ? (
            <button
              className="px-4 py-2 bg-blue-500 hover:bg-blue-600 transition-all text-white rounded"
              onClick={handleNextStep}
            >
              Próximo
            </button>
          ) : (
            <button
              className="px-4 py-2 bg-blue-500 hover:bg-blue-600 transition-all text-white rounded"
              onClick={onClose}
            >
              Sair
            </button>
          )}
        </div>
      </div>
    </div>
  );
};

export default TutorialModal;
