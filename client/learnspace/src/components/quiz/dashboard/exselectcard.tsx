import { useRouter } from 'next/navigation'; // Importe 'next/router' em vez de 'next/navigation'
import { useState } from 'react';

interface ExerciseSelectionCardProps {
  handleExerciseSelection: (field: string, value: string | number) => any;
}

const ExerciseSelectionCard: React.FC<ExerciseSelectionCardProps> = ({
  handleExerciseSelection,
}) => {
  // Estado para armazenar as opções selecionadas pelo usuário
  const [exerciseType, setExerciseType] = useState('');
  const [exerciseDifficulty, setExerciseDifficulty] = useState('');
  const [exerciseQuestionCount, setExerciseQuestionCount] = useState<number>(0); // Defina o tipo como number

  const router = useRouter();

  // Função para enviar as opções selecionadas para a página de exercício
  const handleStartQuiz = () => {
    // Verifica se todas as opções foram selecionadas
    if (exerciseType && exerciseDifficulty && exerciseQuestionCount > 0) {
      // Redireciona para a página de exercício com as opções como parâmetros de consulta
      router.push(
        `/exercise?exerciseType=${exerciseType}&exerciseDifficulty=${exerciseDifficulty}&exerciseQuestionCount=${exerciseQuestionCount}`
      );
    } else {
      alert('Por favor, selecione todas as opções antes de iniciar o quiz.');
    }
  };

  const exerciseOptions = [
    { id: 1, type: 'algebra' },
    { id: 2, type: 'geometria' },
    { id: 3, type: 'estatistica' },
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
          <option value="facil">Fácil</option>
          <option value="medio">Médio</option>
          <option value="dificil">Difícil</option>
        </select>
      </div>
      <div className="mb-4">
        <label className="block text-gray-900 dark:text-white mb-2">Quantidade de Perguntas:</label>
        <input
          type="number"
          value={exerciseQuestionCount}
          placeholder="1, 2, 3 ..."
          onChange={(e) => setExerciseQuestionCount(parseInt(e.target.value))}
          className="w-full p-2 border rounded-md focus:outline-none focus:ring-2 focus:ring-red-500 dark:border-gray-600 dark:bg-gray-700 dark:text-white"
        />
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
