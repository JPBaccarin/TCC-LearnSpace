'use client'
 // Importe 'next/router'
import { useState } from 'react';
import Link from 'next/link'; // Importe o Link
import { usePathname } from 'next/navigation'
import { useRouter } from 'next/navigation'

interface ExerciseSelectionCardProps {
  exerciseType: string;
  exerciseDifficulty: string;
  handleExerciseSelection: (field: string, value: string | number) => any;
  
}

const ExerciseSelectionCard: React.FC<ExerciseSelectionCardProps> = ({
  handleExerciseSelection,
}) => {
  const [exerciseType, setExerciseType] = useState('');
  const [exerciseDifficulty, setExerciseDifficulty] = useState('');

  const router = useRouter();

  const pathname = usePathname();
  
  const handleStartQuiz = () => {
    if (exerciseType && exerciseDifficulty) {
      // Create the query string for the exercise parameters
      const queryParams = `?exerciseType=${exerciseType}&exerciseDifficulty=${exerciseDifficulty}`;
      
      // Use the router to navigate to the ExercisePage with the parameters
      router.push(`/quiz/exercise${queryParams}`);
    } else {
      alert('Por favor, selecione todas as opções antes de iniciar o quiz.');
    }
  };

  const exerciseOptions = [
    { id: 1, type: 'Matemática', exerciseDifficulty: 'Médio' },
  ];

  return (
    <div className="bg-white p-6 rounded-md shadow-lg dark:bg-gray-700 w-full sm:w-fit">
      <h2 className="text-lg font-bold text-gray-900 dark:text-white mb-4">Configuração do Quiz</h2>
      <div className="mb-4">
        <label className="block text-gray-900 dark:text-white mb-2">Tipo de Exercício:</label>
        <select
          value={exerciseType}
          onChange={(e) => setExerciseType(e.target.value)}
          className="w-full p-2 border rounded-md focus:outline-none focus:ring-2 focus:ring-red-500 dark:border-gray-600 dark:bg-gray-700 dark:text-white"
        >
          <option value="">Selecione...</option>
          {exerciseOptions.map((exercise) => (
            <option key={exercise.id} value={exercise.type}>
              {exercise.type.charAt(0).toUpperCase() + exercise.type.slice(1)}
            </option>
          ))}
        </select>
      </div>
      <div className="mb-4">
        <label className="block text-gray-900 dark:text-white mb-2">Dificuldade:</label>
        <select
          value={exerciseDifficulty}
          onChange={(e) => setExerciseDifficulty(e.target.value)}
          className="w-full p-2 border rounded-md focus:outline-none focus:ring-2 focus:ring-red-500 dark:border-gray-600 dark:bg-gray-700 dark:text-white"
        >
          <option value="">Selecione...</option>
          <option value="medio">Médio</option>
        </select>
      </div>
      <button
  className="block w-full bg-red-500 hover:bg-red-600 focus:bg-red-600 text-white font-bold py-2 px-4 rounded-md transition duration-300 transform-gpu hover:scale-105 focus:scale-105"
  onClick={handleStartQuiz}
>
  Iniciar Exercício
</button>
    </div>
  );
};

export default ExerciseSelectionCard;
