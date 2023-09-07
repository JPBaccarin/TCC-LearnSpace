import React from 'react';

interface ExerciseOptionsProps {
  options: string[];
  selectedOption: string;
  handleOptionChange: (option: string) => void;
}

const ExerciseOptions: React.FC<ExerciseOptionsProps> = ({ options, selectedOption, handleOptionChange }) => {
  return (
    <div className="grid grid-cols-2 gap-4 mt-4">
      {options.map((option, index) => (
        <div
          key={index}
          className={`flex items-center justify-center border dark:border-white/10 border-black/10 rounded-md p-2 transition duration-300 hover:bg-blue-100/20  ${selectedOption === option
            ? ' bg-blue-500 dark:border-white/20 border-black/20 text-white'
            : 'bg-white text-gray-900 dark:text-white dark:bg-gray-700'
            }`}
          onClick={() => handleOptionChange(option)}
        >
          {option}
        </div>
      ))}
    </div>
  );
};

export default ExerciseOptions;
