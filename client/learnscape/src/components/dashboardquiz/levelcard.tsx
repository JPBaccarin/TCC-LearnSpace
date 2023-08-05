import React from 'react';


interface LevelCardProps {
  currentLevel: number;
}

const LevelCard: React.FC<LevelCardProps> = ({ currentLevel }) => {
  const levelProgress = (currentLevel / 10) * 100;

  return (
    <div className="bg-white p-6 rounded-md shadow-lg dark:bg-gray-700 mb-6  w-full sm:w-fit">
      <div className="flex items-center justify-start mb-4">
        <div className=" w-full h-4 bg-red-200 rounded-full overflow-hidden">
          <div className="h-4 bg-red-500" style={{ width: `${levelProgress}%` }} />
        </div>
      </div>
      <p className="text-lg font-bold text-gray-900 dark:text-white mb-2">Nível</p>
      <div className="flex justify-between items-center gap-6">
        <div className="flex items-center ">
          <p className="text-base text-gray-900 dark:text-white">Nível Atual:</p>
        </div>
        <p className="text-base font-bold text-gray-900 dark:text-white ">{currentLevel}</p>
      </div>
    </div>
  );
};

export default LevelCard;
