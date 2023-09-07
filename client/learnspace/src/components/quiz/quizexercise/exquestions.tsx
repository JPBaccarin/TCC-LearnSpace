import React from 'react';

interface ExerciseQuestionProps {
  question: string;
  exerciseNumber: number

}

const ExerciseQuestion: React.FC<ExerciseQuestionProps> = ({ question, exerciseNumber }) => {
  return (
    <>
      <h2 className="text-lg font-semibold mb-2 text-gray-900 dark:text-white">
        Questão {exerciseNumber}
      </h2>
      <p className="text-sm text-gray-700 dark:text-gray-300">{question}</p>
    </>
  );
};

export default ExerciseQuestion;
